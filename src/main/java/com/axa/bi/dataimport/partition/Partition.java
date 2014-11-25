package com.axa.bi.dataimport.partition;

import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Splitter;
import com.google.common.collect.Collections2;
import org.apache.log4j.Logger;
import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

import java.util.Collection;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public enum Partition {

    FULL("/yyyy/mm/dd/hhmmss", "\\d{8}_\\d{6}", "yyyyMMdd_HHmmss", "'yyyy'=yyyy'/mm='MM'/dd='dd'/hhmmss='HHmmss",
            "yyyy=\\d{4}/mm=\\d{2}/dd=\\d{2}/hhmmss=\\d{6}"),
    MONTH("/yyyy/mm", "\\d{6}", "yyyyMM", "'yyyy'=yyyy'/mm='MM'", "yyyy=\\d{4}/mm=\\d{2}"),
    DATE("/yyyy/mm/dd", "\\d{8}", "yyyyMMdd", "'yyyy'=yyyy'/mm='MM'/dd='dd'", "yyyy=\\d{4}/mm=\\d{2}/dd=\\d{2}");

    public static Logger log = Logger.getLogger(Partition.class);

    private String name;

    /**
     * regex pattern to extract date string from file name
     */
    private String datePattern;

    /** */
    private String dateParser;

    /** */
    private String partitionDirPattern;
    /**
     * used for recognise the right partition format from hdfs file address
     */
    private String partitionAddressPattern;

    Partition(String name, String datePattern, String dateParser, String partitionDirPattern,
              String partitionAddressPattern) {
        this.name = name;
        this.datePattern = datePattern;
        this.dateParser = dateParser;
        this.partitionDirPattern = partitionDirPattern;
        this.partitionAddressPattern = partitionAddressPattern;
    }

    public static Partition fromString(String name) {
        if (name != null) {
            for (Partition b : Partition.values()) {
                if (name.equalsIgnoreCase(b.name)) {
                    return b;
                }
            }
        }
        return null;
    }

    public DateTimeFormatter partitionDirFormatter() {
        return DateTimeFormat.forPattern(partitionDirPattern);
    }

    public DateTimeFormatter partitionCreationFormatter() {
        return DateTimeFormat.forPattern(partitionDirPattern.replaceAll("\\/", "\", ").replaceAll("=", "=\"") + "\"");
    }

    public DateTimeFormatter viewCreationFormatter() {
        return DateTimeFormat.forPattern(partitionDirPattern.replaceAll("/", "\" AND ").replaceAll("=", "=\"") + "\"");
    }

    public String partitionCreateTable() {
        List<String> partitionItemList = Splitter.on("/").splitToList(name.substring(1));
        Collection<String> typedPartitionItems = Collections2.transform(partitionItemList, new Function<String,
                String>() {
            public String apply(String input) {
                return input + " STRING";
            }
        });
        return Joiner.on(", ").join(typedPartitionItems);
    }

    public DateTime dateTimeFromFileName(String fileName) {
        // Extract date string from file name
        Matcher matcher = Pattern.compile(datePattern).matcher(fileName);
        if (!matcher.find()) {
            log.info("date pattern does not validate for file " + fileName);
            return null;
        }
        String timestamp = matcher.group();

        // Parse date
        return DateTimeFormat.forPattern(dateParser).parseDateTime(timestamp);
    }

    public static Partition fromPath(String path) {
        if (path != null) {
            for (Partition b : Partition.values()) {
                if (path.matches(".*" + b.partitionAddressPattern + "$")) {
                    return b;
                }
            }
        }
        return null;
    }

    public DateTime dateTimeFromPath(String Path) {
        // Extract date string from file name
        Matcher matcher = Pattern.compile(partitionAddressPattern).matcher(Path);
        if (!matcher.find()) {
            log.info("date pattern does not validate for path " + Path);
            return null;
        }
        String timestamp = matcher.group();

        // Parse date
        return DateTimeFormat.forPattern(dateParser.replaceAll("_", "")).parseDateTime(timestamp.replaceAll("[^\\d]",
                ""));
    }
}
