package com.axa.bi.dataimport;

import com.axa.bi.dataimport.importfile.ImportFileDriver;
import com.axa.bi.dataimport.model.DataSet;
import com.google.common.base.Preconditions;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.conf.Configured;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.util.ToolRunner;
import org.apache.log4j.Logger;
import org.joda.time.DateTime;

import java.io.IOException;

public class FileImporter extends Configured {

    public static Logger log = Logger.getLogger(FileImporter.class);

    private DataSet dataSet;

    public FileImporter(DataSet dataSet) {
        this.dataSet = dataSet;
    }

    public int importFile(Path filePath, Path targetPath, DateTime dateTime) throws Exception {
        Preconditions.checkNotNull(dateTime);
        // Generate partition directory path
        log.info("import file " + filePath);
        String partitionPathString = targetPath.toString() + "/" + dataSet.getPartition().partitionDirFormatter()
                .print(dateTime);
        Path partitionPath = new Path(partitionPathString);
        int returnCode = ToolRunner.run(new ImportFileDriver(dataSet), new String[]{filePath.toString(),
                partitionPath.toString()});
        log.info("returnCode for file " + filePath + " " + returnCode);
        return returnCode;
    }

    public boolean shouldImport(Path targetPath, DateTime dateTime) throws IOException {
        FileSystem hdfs = FileSystem.get(new Configuration());
        // Generate partition directory path
        String partitionPathString = targetPath.toString() + "/" + dataSet.getPartition().partitionDirFormatter()
                .print(dateTime) + "/part-m-00000";
        Path partitionPath = new Path(partitionPathString);
        return !hdfs.exists(partitionPath);
    }
}
