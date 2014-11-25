package com.axa.bi.batchuse;

import com.google.common.collect.Maps;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.*;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

public class MappingTableLocalization {

    private Map<String, String> mappingTableDataAddress;

    private FileSystem hdfs;

    private String tempDir;

    public MappingTableLocalization(String dataDirectory, List<String> tableList,
                                    String tempDirectory) throws IOException {
        mappingTableDataAddress = Maps.newLinkedHashMap();
        for (String tableName : tableList) {
            mappingTableDataAddress.put(tableName, dataDirectory + "/" + tableName);
        }
        tempDir = tempDirectory;
        hdfs = FileSystem.get(new Configuration());
    }

    public void generatePigParameters() {
        try {
            hdfs = FileSystem.get(new Configuration());
            FSDataOutputStream out = hdfs.create(new Path(tempDir + "/MappingParameters.pig"));
            for (String tableName : mappingTableDataAddress.keySet()) {
                String latestPartitionAddress = findLatestPartition(mappingTableDataAddress.get(tableName));
                out.write((tableName + "=" + latestPartitionAddress + "\n").getBytes());
                System.out.println(tableName);
            }
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private String findLatestPartition(String dataDir) throws IllegalArgumentException {
        String latestHivePartition = "";
        TreeSet<String> directoryTree = new TreeSet<>();

        try {
            RemoteIterator<LocatedFileStatus> fileStatusListIterator = hdfs.listFiles(new Path(dataDir), true);
            while (fileStatusListIterator.hasNext()) {
                LocatedFileStatus fileStatus = fileStatusListIterator.next();
                String dirName = fileStatus.getPath().getParent().toString();
                directoryTree.add(dirName);
            }
        } catch (FileNotFoundException e) {
            return "file not found";
        } catch (IOException e) {
            e.printStackTrace();
        }

        if (directoryTree.size() > 0) {
            latestHivePartition = directoryTree.last();
        }

        return latestHivePartition;
    }
}
