package com.axa.bi.fs;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileStatus;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ListStatus {

    public static void main(String[] args) throws IOException {
        FileSystem fileSystem = FileSystem.get(new Configuration());
        List<Path> paths = getRecursivePaths(fileSystem, args[0]);
        for (Path path : paths) {
            System.out.println(path.toString());
        }
    }

    private static List<Path> getRecursivePaths(FileSystem fs, String basePath) throws IOException {
        List<Path> result = new ArrayList<>();
        basePath = fs.getUri() + basePath;
        readSubDirectory(fs, result, basePath);
        return result;
    }

    private static void readSubDirectory(FileStatus fileStatus, FileSystem fs, List<Path> paths) throws IOException {
        paths.add(fileStatus.getPath());
        if (fileStatus.isDirectory()) {
            String subPath = fileStatus.getPath().toString();
            readSubDirectory(fs, paths, subPath);
        }
    }

    private static void readSubDirectory(FileSystem fs, List<Path> paths, String subPath) throws IOException {
        FileStatus[] listStatus = fs.globStatus(new Path(subPath + "/*"));
        for (FileStatus fileStatus : listStatus) {
            paths.add(fileStatus.getPath());
            if (fileStatus.isDirectory()) {
                readSubDirectory(fileStatus, fs, paths);
            }
        }
    }

}
