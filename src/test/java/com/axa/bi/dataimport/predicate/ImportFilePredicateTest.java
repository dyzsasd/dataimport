package com.axa.bi.dataimport.predicate;

import com.google.common.collect.Collections2;
import com.google.common.collect.Lists;
import org.apache.hadoop.fs.FileStatus;
import org.apache.hadoop.fs.Path;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

public class ImportFilePredicateTest {


    private ImportFilePredicate importFilePredicate;

    @Before
    public void initialize() throws IOException {
        importFilePredicate = new ImportFilePredicate("RPT_DER_yyyymm.csv");
    }

    @Test
    public void testImportFilePredicate() {

        FileStatus fileStatus1 = new FileStatus();
        fileStatus1.setPath(new Path("/group/pisquare/raw/RPT_DER_201406.csv"));
        FileStatus fileStatus2 = new FileStatus();
        fileStatus2.setPath(new Path("/group/pisquare/raw/RPT_DER_201407.csv"));
        FileStatus fileStatus3 = new FileStatus();
        fileStatus3.setPath(new Path("/group/pisquare/raw/test_20140201_000000.CSV"));

        List<FileStatus> fileStatusList = Lists.newArrayList(fileStatus1, fileStatus2, fileStatus3);

        List<FileStatus> filteredFileStatusList = Lists.newArrayList(Collections2.filter(fileStatusList,
                importFilePredicate));

        assertThat(filteredFileStatusList).containsExactly(fileStatus1, fileStatus2);


    }

}