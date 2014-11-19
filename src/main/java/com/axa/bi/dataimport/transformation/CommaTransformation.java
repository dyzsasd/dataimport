package com.axa.bi.dataimport.transformation;

import com.google.common.base.Function;

import javax.annotation.Nullable;

public class CommaTransformation implements Function<String, String> {

    @Nullable
    @Override
    public String apply(@Nullable String input) {
        return input.replaceAll(",", ".");
    }
}