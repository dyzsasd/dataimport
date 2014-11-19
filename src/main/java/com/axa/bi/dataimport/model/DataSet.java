package com.axa.bi.dataimport.model;

import com.axa.bi.dataimport.filter.Filter;
import com.axa.bi.dataimport.partition.Partition;

public class DataSet {

    private String hdfsRawDirectory;
    private String hdfsDataDirectory;
    private Partition partition;
    private String fileName;
    private String charset;
    private String delimiter;
    private boolean delta;
    private HiveTable hiveTable;
    private Filter filter;

    private DataSet() {
    }

    public DataSet(String hdfsRawDirectory, String hdfsDataDirectory, Partition partition, String fileName,
                   String charset, String delimiter, boolean delta, HiveTable hiveTable, Filter filter) {
        this.hdfsRawDirectory = hdfsRawDirectory;
        this.hdfsDataDirectory = hdfsDataDirectory;
        this.partition = partition;
        this.fileName = fileName;
        this.charset = charset;
        this.delimiter = delimiter;
        this.delta = delta;
        this.hiveTable = hiveTable;
        this.filter = filter;
    }

    public String getHdfsRawDirectory() {
        return hdfsRawDirectory;
    }

    public String getHdfsDataDirectory() {
        return hdfsDataDirectory;
    }

    public Partition getPartition() {
        return partition;
    }

    public String getFileName() {
        return fileName;
    }

    public String getCharset() {
        return charset;
    }

    public String getDelimiter() {
        return delimiter;
    }

    public boolean isDelta() {
        return delta;
    }

    public HiveTable getHiveTable() {
        return hiveTable;
    }

    public Filter getFilter() {
        return filter;
    }

    @Override
    public String toString() {
        return "DataSet{" +
                "hdfsRawDirectory='" + hdfsRawDirectory + '\'' +
                ", hdfsDataDirectory='" + hdfsDataDirectory + '\'' +
                ", partition=" + partition +
                ", fileName='" + fileName + '\'' +
                ", charset='" + charset + '\'' +
                ", delimiter='" + delimiter + '\'' +
                ", delta=" + delta +
                ", hiveTable=" + hiveTable +
                ", filter=" + filter +
                '}';
    }
}
