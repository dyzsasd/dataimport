package com.axa.bi.dataimport.transformation;

import org.junit.Before;
import org.junit.Test;

import static org.assertj.core.api.Assertions.assertThat;

public class SAPTransformationTest {

    private SAPTransformation sapTransformation;

    @Before
    public void setUp() throws Exception {
        this.sapTransformation = new SAPTransformation();
    }

    @Test
    public void testTransformItem() throws Exception {
        assertThat(sapTransformation.apply("123.45 ")).isEqualTo("123.45");
    }

    @Test
    public void testTransformNegative() throws Exception {
        assertThat(sapTransformation.apply("123.45-")).isEqualTo("-123.45");
    }
}