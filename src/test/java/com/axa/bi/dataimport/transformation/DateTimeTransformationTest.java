package com.axa.bi.dataimport.transformation;

import com.google.common.base.Function;
import org.junit.Test;

import static org.assertj.core.api.Assertions.assertThat;

public class DateTimeTransformationTest {

    @Test
    public void testDateTimeTransformItem() throws Exception {
        Function<String, String> dateTimeTransformation = Transformation.DATETIME.getFunction();
        assertThat(dateTimeTransformation.apply("20140101 000000")).isEqualTo("2014-01-01 00:00:00");
        assertThat(dateTimeTransformation.apply("bad format")).isEqualTo("");
    }

    @Test
    public void testDateTransformItem() throws Exception {
        Function<String, String> dateTimeTransformation = Transformation.DATE.getFunction();
        assertThat(dateTimeTransformation.apply("20140101")).isEqualTo("2014-01-01 00:00:00");
        assertThat(dateTimeTransformation.apply("bad format")).isEqualTo("");
    }
}