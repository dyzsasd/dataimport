package com.axa.bi.dataimport.filter;

import com.google.common.base.Predicate;

import javax.annotation.Nullable;

public class HeaderFilter implements Predicate<KeyValue> {
    @Override
    public boolean apply(@Nullable KeyValue keyValue) {
        return keyValue.getKey() !=  0;
    }
}
