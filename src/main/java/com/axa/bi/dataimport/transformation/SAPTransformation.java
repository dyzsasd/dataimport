package com.axa.bi.dataimport.transformation;


import com.google.common.base.Function;

import javax.annotation.Nullable;

public class SAPTransformation implements Function<String, String> {

    @Nullable
    @Override
    public String apply(@Nullable String input) {
        String suffix = input.substring(input.length() - 1);
        return (suffix + input.substring(0, input.length() - 1)).trim();
    }
}
