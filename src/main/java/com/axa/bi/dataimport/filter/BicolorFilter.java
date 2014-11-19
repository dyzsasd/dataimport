package com.axa.bi.dataimport.filter;

import com.google.common.base.Predicate;

import javax.annotation.Nullable;

public class BicolorFilter implements Predicate<KeyValue> {
    @Override
    public boolean apply(@Nullable KeyValue keyValue) {
        return keyValue.getValue().startsWith("05");
    }
}
