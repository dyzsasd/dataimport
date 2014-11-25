package com.axa.bi.dataimport;

import com.axa.bi.dataimport.partition.Partition;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.LocatedFileStatus;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.fs.RemoteIterator;
import org.apache.log4j.Logger;

import java.io.IOException;
import java.util.TreeSet;

public class HiveScriptGenerator {

    public static Logger log = Logger.getLogger(HiveScriptGenerator.class);
    private boolean delta = false;
    private FileSystem hdfs;
    private String hiveTable;
    private String dataDir;
    private Partition partition;

    public HiveScriptGenerator(FileSystem hdfs, String dataDir, String hiveTable, Partition partition, boolean delta) {
        this.hdfs = hdfs;
        this.dataDir = dataDir;
        this.hiveTable = hiveTable;
        this.partition = partition;
        this.delta = delta;
    }

    public String generateHiveScript() throws IOException {

        String tableName = hiveTable;
        if (!delta) {
            tableName += "_all";
        }

        String hiveScript = "MSCK REPAIR TABLE " + tableName + ";\n";

        Path dataPath = new Path(dataDir);
        if (!delta && hdfs.exists(dataPath)) {
            hiveScript = refreshActualView(hiveScript);
        }
        return hiveScript;
    }


    private String refreshActualView(String hiveScript) throws IOException {
        String latestPartition = findLatestPartition();
        if (!latestPartition.isEmpty()) {
            hiveScript += "ALTER TABLE " + hiveTable + " SET LOCATION '" + latestPartition + "';\n";
        }
        return hiveScript;
    }

    private String findLatestPartition() throws IllegalArgumentException, IOException {
        String latestHivePartition = "";
        TreeSet<String> directoryTree = new TreeSet<>();

        RemoteIterator<LocatedFileStatus> fileStatusListIterator = hdfs.listFiles(new Path(dataDir), true);
        while (fileStatusListIterator.hasNext()) {
            LocatedFileStatus fileStatus = fileStatusListIterator.next();
            String dirName = fileStatus.getPath().getParent().toString();
            directoryTree.add(dirName);
        }

        if (directoryTree.size() > 0) {
            latestHivePartition = directoryTree.last();
        }

        return latestHivePartition;
    }
}