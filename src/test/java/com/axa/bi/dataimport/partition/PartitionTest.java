package com.axa.bi.dataimport.partition;

import org.joda.time.DateTime;
import org.junit.Test;

import static org.assertj.core.api.Assertions.assertThat;

public class PartitionTest {

    @Test
    public void testPartitionDirFormatter() throws Exception {
        DateTime dateTime = DateTime.parse("2010-06-30");
        String partitionDir = Partition.FULL.partitionDirFormatter().print(dateTime);
        assertThat(partitionDir).isEqualTo("yyyy=2010/mm=06/dd=30/hhmmss=000000");
    }

    @Test
    public void testPartitionCreationFormatter() throws Exception {
        DateTime dateTime = DateTime.parse("2010-06-30");
        String partitionDir = Partition.FULL.partitionCreationFormatter().print(dateTime);
        assertThat(partitionDir).isEqualTo("yyyy=\"2010\", mm=\"06\", dd=\"30\", hhmmss=\"000000\"");
    }

    @Test
    public void testViewCreationFormatter() throws Exception {
        DateTime dateTime = DateTime.parse("2010-06-30");
        String partitionDir = Partition.FULL.viewCreationFormatter().print(dateTime);
        assertThat(partitionDir).isEqualTo("yyyy=\"2010\" AND mm=\"06\" AND dd=\"30\" AND hhmmss=\"000000\"");
    }

    @Test
    public void testDateTimeFromFileName() throws Exception {
        assertThat(Partition.FULL.dateTimeFromFileName("filename_20100630_000000.csv")).isEqualTo(DateTime.parse
                ("2010-06-30"));
        assertThat(Partition.DATE.dateTimeFromFileName("TAIGAAXA_BI_AFF_20140331.csv")).isEqualTo(DateTime.parse
                ("2014-03-31"));
    }

    @Test
    public void testFromString() throws Exception {
        assertThat(Partition.fromString("/yyyy/mm/dd/hhmmss")).isEqualTo(Partition.FULL);
    }
}