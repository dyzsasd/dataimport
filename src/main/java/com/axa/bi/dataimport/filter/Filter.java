package com.axa.bi.dataimport.filter;

import com.google.common.base.Predicate;

public enum Filter {

    HEADER("header", new HeaderFilter()),//
    BICOLOR("bicolor", new BicolorFilter());//

    private String name;

    private Predicate<KeyValue> predicate;

    Filter(String name, Predicate<KeyValue> predicate) {
        this.name = name;
        this.predicate = predicate;
    }

    public static Filter fromString(String name) {
        if (name != null) {
            for (Filter filter : Filter.values()) {
                if (name.equalsIgnoreCase(filter.name)) {
                    return filter;
                }
            }
        }
        return null;
    }

    public String getName() {
        return name;
    }

    public Predicate<KeyValue> getPredicate() {
        return predicate;
    }
}
