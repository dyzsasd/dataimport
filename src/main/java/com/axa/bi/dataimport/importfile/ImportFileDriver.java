package com.axa.bi.dataimport.importfile;

import com.axa.bi.dataimport.model.DataSet;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.conf.Configured;
import org.apache.hadoop.fs.FSDataOutputStream;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.NullWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.input.TextInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;
import org.apache.hadoop.mapreduce.lib.output.TextOutputFormat;
import org.apache.hadoop.util.Tool;
import org.apache.log4j.Logger;

public class ImportFileDriver extends Configured implements Tool {

    public static Logger log = Logger.getLogger(ImportFileDriver.class);

    private DataSet dataSet;

    public ImportFileDriver(DataSet dataSet) {
        this.dataSet = dataSet;
    }

    public int run(String[] args) throws Exception {
        Configuration configuration = getConf();

        configuration.set("delimiter", dataSet.getDelimiter());
        configuration.set("charset", dataSet.getCharset());

        // Oozie
        if (System.getProperty("oozie.action.conf.xml") != null) {
            String configurationLocation = System.getProperty("oozie.action.conf.xml");
            Path localConfigurationPath = new Path(configurationLocation);
            configuration.addResource(localConfigurationPath);
        }

        // Kerberos
        if (System.getenv("HADOOP_TOKEN_FILE_LOCATION") != null) {
            configuration.set("mapreduce.job.credentials.binary", System.getenv("HADOOP_TOKEN_FILE_LOCATION"));
        }

        Job job = Job.getInstance(configuration);
        job.setJobName("ImportFile " + new Path(args[0]).getName());

        job.setJarByClass(ImportFileDriver.class);

        job.setInputFormatClass(TextInputFormat.class);
        job.setOutputFormatClass(TextOutputFormat.class);

        FileInputFormat.setInputPaths(job, args[0]);
        FileOutputFormat.setOutputPath(job, new Path(args[1]));

        job.setJarByClass(ImportFileDriver.class);
        job.setMapperClass(ImportFileMapper.class);
        job.setNumReduceTasks(0);

        job.setOutputKeyClass(Text.class);
        job.setOutputValueClass(NullWritable.class);


        final FileSystem hdfs = FileSystem.get(getConf());

        ObjectMapper mapper = new ObjectMapper();
        Path inputfilePath = new Path("/tmp/" + new Path(args[0]).getName() + "/schema.json");
        try (FSDataOutputStream out = hdfs.create(inputfilePath)) {
            mapper.writeValue(out, dataSet);
            hdfs.deleteOnExit(inputfilePath.getParent());
        }
        job.addCacheFile(inputfilePath.toUri());

        return job.waitForCompletion(true) ? 0 : 1;
    }
}
