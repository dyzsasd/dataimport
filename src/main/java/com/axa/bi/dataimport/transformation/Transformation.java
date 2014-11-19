package com.axa.bi.dataimport.transformation;

import com.google.common.base.Function;

public enum Transformation {


    SAP_INT("SAP int", new SAPTransformation()),//
    SAP_DEC("SAP dec", new SAPTransformation()),//
    DATE("yyyymmdd", DateTimeTransformation.DATE_TRANSFORMATION),//
    DATE1("dd/mm/yyyy", DateTimeTransformation.DATE1),//
    DATETIME("yyyymmdd hhmmss", DateTimeTransformation.DATE_TIME_TRANSFORMATION),//
    DATETIMEZEROS("yyyymmddhhmmss000000", DateTimeTransformation.DATE_TIME_ZEROS),//
    COMMA("comma", new CommaTransformation());

    private String name;

    private Function<String, String> function;

    Transformation(String name, Function<String, String> function) {
        this.name = name;
        this.function = function;
    }

    public static Transformation fromString(String name) {
        if (name != null) {
            for (Transformation transformation : Transformation.values()) {
                if (name.equalsIgnoreCase(transformation.name)) {
                    return transformation;
                }
            }
        }
        return null;
    }

    public String getName() {
        return name;
    }

    public Function<String, String> getFunction() {
        return function;
    }
}
