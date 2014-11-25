package com.axa.bi.dataimport;

import com.axa.bi.dataimport.model.HiveTable;
import com.axa.bi.dataimport.model.DataSet;
import com.axa.bi.dataimport.parser.CsvParser;
import com.axa.bi.dataimport.predicate.ImportFilePredicate;
import com.google.common.collect.Collections2;
import com.google.common.collect.Lists;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.conf.Configured;
import org.apache.hadoop.fs.FSDataOutputStream;
import org.apache.hadoop.fs.FileStatus;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.util.Tool;
import org.apache.hadoop.util.ToolRunner;
import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.joda.time.DateTime;
import org.kohsuke.args4j.CmdLineException;
import org.kohsuke.args4j.CmdLineParser;
import org.kohsuke.args4j.Option;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.*;

public class DataImport extends Configured implements Tool {

    public static Logger log = Logger.getLogger(DataImport.class);

    private ExecutorService executorService = Executors.newFixedThreadPool(10);

    @Option(name = "-path", usage = "database name", required = true)
    private String path = "";

    public static void main(String[] args) throws Exception {
        BasicConfigurator.configure();

        DataImport dataImport = new DataImport();
        CmdLineParser parser = new CmdLineParser(dataImport);

        try {
            parser.parseArgument(args);
        } catch (CmdLineException e) {
            System.err.println(e.getMessage());
            System.err.println("java -jar pisquare.jar [options...] arguments...");
            parser.printUsage(System.err);
            return;
        }
        int res = ToolRunner.run(dataImport, args);
        System.exit(res);
    }

    public int run(String[] args) throws Exception {
        Configuration configuration = getConf();

        // Oozie
        if (System.getProperty("oozie.action.conf.xml") != null) {
            String configurationLocation = System.getProperty("oozie.action.conf.xml");
            Path localConfigurationPath = new Path(configurationLocation);
            configuration.addResource(localConfigurationPath);
        }

        List<DataSet> dataSetList = new CsvParser("inputfile.tsv", "hivetable.tsv").parseInputFiles();

        importFiles(dataSetList);

        createHiveScript(dataSetList);

        executorService.shutdown();
        return 0;
    }

    private void createHiveScript(List<DataSet> dataSetList) throws IOException {
        FileSystem hdfs = FileSystem.get(getConf());
        String hiveScript = "USE " + dataSetList.get(0).getHiveTable().getDatabase() + ";\n";
        for (DataSet dataSet : dataSetList) {
            HiveTable hiveTable = dataSet.getHiveTable();
            final HiveScriptGenerator hiveScriptGenerator = new HiveScriptGenerator(hdfs,
                    dataSet.getHdfsDataDirectory(), hiveTable.getName(), dataSet.getPartition(),
                    dataSet.isDelta());
            hiveScript += hiveScriptGenerator.generateHiveScript();
        }

        // write hive script
        Path hiveScriptPath = new Path(path + "/hivescript.hql");
        try (FSDataOutputStream out = hdfs.create(hiveScriptPath)) {
            out.write(hiveScript.getBytes());
        } catch (Exception e) {
            log.error("error writing hivescript.hql", e);
            throw e;
        }
    }

    private void importFiles(List<DataSet> dataSetList) throws IOException, ExecutionException, InterruptedException {
        FileSystem hdfs = FileSystem.get(getConf());
        List<Future<Integer>> futures = Lists.newArrayList();

        for (DataSet dataSet : dataSetList) {
            HiveTable hiveTable = dataSet.getHiveTable();

            final FileImporter fileImporter = new FileImporter(dataSet);


            Path rawPath = new Path(dataSet.getHdfsRawDirectory());

            FileStatus[] statuses = hdfs.listStatus(rawPath);

            List<FileStatus> importFiles = Lists.newArrayList(Collections2.filter(Arrays.asList(statuses),
                    new ImportFilePredicate(dataSet.getFileName())));

            final String dataDir = dataSet.getHdfsDataDirectory();
            for (FileStatus importFile : importFiles) {
                final Path filePath = importFile.getPath();
                final DateTime dateTime = dataSet.getPartition().dateTimeFromFileName(filePath.getName());
                if (fileImporter.shouldImport(new Path(dataDir), dateTime)) {
                    futures.add(executorService.submit(new Callable<Integer>() {
                        @Override
                        public Integer call() throws Exception {
                            try {
                                return fileImporter.importFile(filePath, new Path(dataDir), dateTime);
                            } catch (Exception e) {
                                log.error("error importing file " + filePath.getName(), e);
                                throw e;
                            }
                        }
                    }));
                }
            }
        }


        for (Future<Integer> future : futures) {
            try {
                if (future.get() != 0) {
                    throw new RuntimeException("One file could not be imported");
                }
            } catch (InterruptedException | ExecutionException e) {
                log.error("error importing file", e);
                throw e;
            }
        }
    }
}
