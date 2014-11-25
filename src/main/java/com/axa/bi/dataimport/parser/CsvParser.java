package com.axa.bi.dataimport.parser;

import com.axa.bi.dataimport.filter.Filter;
import com.axa.bi.dataimport.model.DataSet;
import com.axa.bi.dataimport.model.HiveField;
import com.axa.bi.dataimport.model.HiveTable;
import com.axa.bi.dataimport.partition.Partition;
import com.axa.bi.dataimport.transformation.Transformation;
import com.google.common.base.Charsets;
import com.google.common.base.Function;
import com.google.common.base.Predicate;
import com.google.common.base.Splitter;
import com.google.common.collect.Collections2;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.common.io.Files;

import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

public class CsvParser {

    private String inputfilePath;

    private String hivetablePath;

    public CsvParser(String inputfilePath, String hivetablePath) {
        this.inputfilePath = inputfilePath;
        this.hivetablePath = hivetablePath;
    }

    public List<DataSet> parseInputFiles() throws IOException {
        HashMap<String, HiveTable> hiveTableMap = parseHiveTables(hivetablePath);
        return parseInputFiles(inputfilePath, hiveTableMap);
    }

    private List<DataSet> parseInputFiles(String inputfilePath, HashMap<String,
            HiveTable> hiveTableMap) throws IOException {
        List<DataSet> dataSets = Lists.newArrayList();

        List<String> lines = Files.readLines(new File(inputfilePath), Charsets.UTF_8);

        for (String line : lines) {
            List<String> items = Splitter.on("\t").splitToList(line);
            String hdfsRawDirectory = items.get(1);
            String hdfsDataDirectory = items.get(2);
            Partition partition = Partition.fromString(items.get(3));
            String fileName = items.get(5);
            String charset = items.get(6);
            String delimiter = items.get(7);
            String fullDelta = items.get(10);
            HiveTable hiveTable = hiveTableMap.get(items.get(0));
            Filter filter = Filter.fromString(items.get(13));

            boolean delta = "D".equals(fullDelta);

            dataSets.add(new DataSet(hdfsRawDirectory, hdfsDataDirectory, partition, fileName, charset,
                    delimiter, delta, hiveTable, filter));
        }

        return dataSets;
    }

    private HashMap<String, HiveTable> parseHiveTables(String hivetablePath) throws IOException {
        HashMap<String, HiveTable> hiveTableMap = Maps.newHashMap();

        List<String> lines = Files.readLines(new File(hivetablePath), Charsets.UTF_8);

        Collection<List<String>> splitLines = Collections2.transform(lines, new Function<String, List<String>>() {
            public List<String> apply(String line) {
                return Splitter.on("\t").splitToList(line);

            }
        });

        Set<String> tables = Sets.newHashSet(Collections2.transform(splitLines, new Function<List<String>, String>() {
            public String apply(List<String> splitLine) {
                return splitLine.get(0);
            }
        }));

        for (final String table : tables) {
            Collection<List<String>> fieldLines = Collections2.filter(splitLines, new Predicate<List<String>>() {
                public boolean apply(List<String> input) {
                    return table.equals(input.get(0));
                }
            });

            List<HiveField> hiveFields = Lists.newArrayList();
            String database = null;
            for (List<String> fieldLine : fieldLines) {
                if (database == null) {
                    database = fieldLine.get(1);
                }
                Integer index = Integer.valueOf(fieldLine.get(2));
                String name = fieldLine.get(3);
                String type = fieldLine.get(4);
                Transformation transformation = Transformation.fromString(fieldLine.get(5));
                String comment = fieldLine.get(6);
                hiveFields.add(new HiveField(index, name, type, transformation, comment));
            }
            hiveTableMap.put(table, new HiveTable(database, table, hiveFields));
        }
        return hiveTableMap;
    }

}
