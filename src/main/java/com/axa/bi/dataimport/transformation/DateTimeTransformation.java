package com.axa.bi.dataimport.transformation;

import com.google.common.base.Function;
import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

import javax.annotation.Nullable;

public class DateTimeTransformation implements Function<String, String> {

    public static final DateTimeTransformation DATE_TIME_ZEROS = new DateTimeTransformation("yyyyMMddHHmmss'000000'");
    public static final DateTimeTransformation DATE_TIME_TRANSFORMATION = new DateTimeTransformation("yyyyMMdd HHmmss");
    public static final DateTimeTransformation DATE_TRANSFORMATION = new DateTimeTransformation("yyyyMMdd");
    public static final DateTimeTransformation DATE1 = new DateTimeTransformation("dd/MM/yyyy");


    private static final DateTimeFormatter HIVE_DATE_FORMATTER = DateTimeFormat.forPattern("yyyy-MM-dd HH:mm:ss");
    private DateTimeFormatter inputPattern;

    private DateTimeTransformation(String pattern) {
        inputPattern = DateTimeFormat.forPattern(pattern);
    }

    @Nullable
    @Override
    public String apply(@Nullable String input) {
        try {
            DateTime dateTime = inputPattern.parseDateTime(input);
            return HIVE_DATE_FORMATTER.print(dateTime);
        } catch (IllegalArgumentException e) {
            return "";
        }
    }
}
