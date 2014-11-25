package com.axa.bi.batchuse;

import com.google.common.collect.Lists;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;


public class BatchViewPreparation {
    private List<String> mappingTableList;
    private String dataPath;
    private String tempDir;

    public BatchViewPreparation(String mappingTableListPath, String dataPath, String tempDirectory) {
        this.dataPath = dataPath;
        mappingTableList = Lists.newArrayList();
        tempDir = tempDirectory;
        try {
            FileSystem hdfs = FileSystem.get(new Configuration());
            BufferedReader inputStream = new BufferedReader(new InputStreamReader(hdfs.open(new Path
                    (mappingTableListPath))));
            String line;
            while ((line = inputStream.readLine()) != null) {
                System.out.println("readed="+line);
                mappingTableList.add(line);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    static public void main(String[] args) throws IOException {
        System.out.println(args[0] + "\n" + args[1] + "\n");
        BatchViewPreparation batchViewPreparation = new BatchViewPreparation(args[0], args[1], args[2]);
        batchViewPreparation.preparation();
    }

    public void preparation() throws IOException {
        MappingTableLocalization mappingTableLocalization = new MappingTableLocalization(dataPath, mappingTableList,
                tempDir);
        mappingTableLocalization.generatePigParameters();
    }
}
