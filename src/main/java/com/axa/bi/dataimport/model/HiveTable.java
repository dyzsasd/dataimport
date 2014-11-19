package com.axa.bi.dataimport.model;

import java.util.List;

public class HiveTable {

    private String database;

    private String name;

    private List<HiveField> hiveFields;

    private HiveTable() {
    }

    public HiveTable(String database, String name, List<HiveField> hiveFields) {
        this.database = database;
        this.name = name;
        this.hiveFields = hiveFields;
    }

    public String getName() {
        return name;
    }

    public String getDatabase() {
        return database;
    }

    public List<HiveField> getHiveFields() {
        return hiveFields;
    }

    @Override
    public String toString() {
        return "HiveTable{" +
                "database='" + database + '\'' +
                ", name='" + name + '\'' +
                ", hiveFields=" + hiveFields +
                '}';
    }
}
