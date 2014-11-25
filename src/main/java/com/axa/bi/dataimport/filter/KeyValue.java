package com.axa.bi.dataimport.filter;

public class KeyValue {

    private Long key;

    private String value;

    public KeyValue(Long key, String value) {
        this.key = key;
        this.value = value;
    }

    public Long getKey() {
        return key;
    }

    public String getValue() {
        return value;
    }
}

