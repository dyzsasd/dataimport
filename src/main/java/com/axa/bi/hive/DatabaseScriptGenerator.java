package com.axa.bi.hive;

import com.axa.bi.dataimport.model.HiveField;
import com.axa.bi.dataimport.model.HiveTable;
import com.axa.bi.dataimport.model.DataSet;
import com.axa.bi.dataimport.parser.CsvParser;
import com.google.common.base.Charsets;
import com.google.common.base.Joiner;
import com.google.common.collect.Lists;
import com.google.common.io.Files;

import java.io.File;
import java.io.IOException;
import java.util.List;


public class DatabaseScriptGenerator {

    public static void main(String[] args) throws IOException {
        DatabaseScriptGenerator databaseScriptGenerator = new DatabaseScriptGenerator();

        databaseScriptGenerator.createHiveScript("pisquare", "crdb");

        databaseScriptGenerator.createHiveScript("pisquare", "cube_a");

        databaseScriptGenerator.createHiveScript("pisquare", "cube_b");

        databaseScriptGenerator.createHiveScript("pisquare", "cube_reim");

        databaseScriptGenerator.createHiveScript("pisquare", "manual");

        databaseScriptGenerator.createHiveScript("pisquare", "master");

        databaseScriptGenerator.createHiveScript("bicolor_retraite", "root");

        databaseScriptGenerator.createHiveScript("iard_en", "root");
    }

    private void createHiveScript(String tenant, String engine) throws IOException {
        String rootDir = "src/main/resources/" + tenant + "/" + engine + "/";

        CsvParser csvParser = new CsvParser(rootDir + "inputfile.tsv", rootDir + "hivetable.tsv");
        List<DataSet> dataSets = csvParser.parseInputFiles();
        String hiveScript2 = generateHiveScript(dataSets);
        File createTableFile2 = new File(rootDir + "createTables2.hql");
        Files.createParentDirs(createTableFile2);
        Files.write(hiveScript2, createTableFile2, Charsets.UTF_8);
        String dropScript = generateDropScript(dataSets);
        File dropScriptFile = new File(rootDir + "dropTables.hql");
        Files.createParentDirs(dropScriptFile);
        Files.write(dropScript, dropScriptFile, Charsets.UTF_8);
    }

    private String generateDropScript(List<DataSet> dataSets) {
        String res = "";

        for (DataSet dataSet : dataSets) {
            res += scriptDropOneHiveTable(dataSet.getHiveTable(), dataSet);
        }

        return res;
    }

    private String scriptDropOneHiveTable(HiveTable hiveTable, DataSet dataSet) {
        String res = "DROP TABLE IF EXISTS " + hiveTable.getName() + ";\n";
        if (!dataSet.isDelta()) {
            res += "DROP TABLE IF EXISTS " + hiveTable.getName() + "_all;\n";
        }
        return res;
    }

    public String generateHiveScript(List<DataSet> dataSets) {
        String res = "";

        for (DataSet dataSet : dataSets) {
            res += scriptCreateOneHiveTable(dataSet.getHiveTable(), dataSet);
        }

        return res;
    }

    private String scriptCreateOneHiveTable(HiveTable hiveTable, DataSet dataSet) {
        String res = "";
        if (!dataSet.isDelta()) {
            res += "CREATE EXTERNAL TABLE IF NOT EXISTS ";
            res += hiveTable.getName() + " (\n";

            List<String> columnCreateStatements = Lists.newArrayList();
            for (HiveField hiveField : hiveTable.getHiveFields()) {
                String comment = hiveField.getComment().isEmpty() ? "" : " COMMENT '" + hiveField.getComment()
                        .replace("" + ".", " ").replace(":", " ").replace("/", " ").replace("'", " ").replace("\"",
                                " ").replace(",", " ") + "'";
                columnCreateStatements.add("  " + hiveField.getName() + " " + hiveField.getType() + comment);
            }
            res += Joiner.on(",\n").join(columnCreateStatements);
            res += ")\n";

            res += "ROW FORMAT DELIMITED FIELDS TERMINATED BY '" + dataSet.getDelimiter() + "'\n" +
                    "LOCATION '" + dataSet.getHdfsDataDirectory() + "';\n";
            res += "\n";
        }

        String hiveTableSuffix = dataSet.isDelta() ? "" : "_all";
        res += "CREATE EXTERNAL TABLE IF NOT EXISTS ";
        res += hiveTable.getName() + hiveTableSuffix + " (\n";

        List<String> columnCreateStatements = Lists.newArrayList();
        for (HiveField hiveField : hiveTable.getHiveFields()) {
            String comment = hiveField.getComment().isEmpty() ? "" : " COMMENT '" + hiveField.getComment().replace(""
                    + ".", " ").replace(":", " ").replace("/", " ").replace("'", " ").replace("\"", " ").replace(",",
                    " ") + "'";
            columnCreateStatements.add("  " + hiveField.getName() + " " + hiveField.getType() + comment);
        }
        res += Joiner.on(",\n").join(columnCreateStatements);
        res += ")\n";

        res += "PARTITIONED BY (";

        res += dataSet.getPartition().partitionCreateTable();

        res += ")\n" +
                "ROW FORMAT DELIMITED FIELDS TERMINATED BY '" + dataSet.getDelimiter() + "'\n" +
                "LOCATION '" + dataSet.getHdfsDataDirectory() + "';\n";

        return res + "\n\n";
    }
}