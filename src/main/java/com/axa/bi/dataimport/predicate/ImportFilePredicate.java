package com.axa.bi.dataimport.predicate;

import com.google.common.base.Predicate;
import org.apache.hadoop.fs.FileStatus;
import org.apache.hadoop.fs.Path;

import javax.annotation.Nullable;

public class ImportFilePredicate implements Predicate<FileStatus> {

    private String fileRegex;

    public ImportFilePredicate(String fileName) {
        this.fileRegex = fileName.replaceAll("yyyymmdd", "\\\\d{8}").replaceAll("hhmmss",
                "\\\\d{6}").replaceAll("yyyymm", "\\\\d{6}").split("\\.")[0] + ".*";
    }

    @Override
    public boolean apply(@Nullable FileStatus fileStatus) {
        if (fileStatus != null) {
            Path filePath = fileStatus.getPath();
            return filePath.getName().matches(fileRegex);
        } else {
            return false;
        }
    }


}
