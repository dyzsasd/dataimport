package com.axa.bi.datareplication;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.conf.Configured;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.NullWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.input.TextInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;
import org.apache.hadoop.mapreduce.lib.output.TextOutputFormat;
import org.apache.hadoop.util.Tool;
import org.apache.hadoop.util.ToolRunner;

public class DataReplicationDriver extends Configured implements Tool {

    public static void main(String[] args) throws Exception {
        int exitCode = ToolRunner.run(new DataReplicationDriver(), args);
        System.exit(exitCode);
    }

    @Override
    public int run(String[] args) throws Exception {

        Configuration configuration = getConf();

        // Oozie
        if (System.getProperty("oozie.action.conf.xml") != null) {
            String configurationLocation = System.getProperty("oozie.action.conf.xml");
            Path localConfigurationPath = new Path(configurationLocation);
            configuration.addResource(localConfigurationPath);
        }

        // Kerberos
        if (System.getenv("HADOOP_TOKEN_FILE_LOCATION") != null) {
            configuration.set("mapreduce.job.credentials.binary", System.getenv("HADOOP_TOKEN_FILE_LOCATION"));
        }

        Job job = Job.getInstance(configuration);
        job.setJobName("dataReplication");

        job.setInputFormatClass(TextInputFormat.class);
        job.setOutputFormatClass(TextOutputFormat.class);

        FileInputFormat.setInputPaths(job, args[0]);
        FileOutputFormat.setOutputPath(job, new Path(args[1]));

        job.setJarByClass(DataReplicationDriver.class);

        job.setOutputKeyClass(Text.class);
        job.setOutputValueClass(NullWritable.class);

        job.setMapperClass(DataReplicationMapper.class);
        job.setNumReduceTasks(0);

        return job.waitForCompletion(true) ? 0 : 1;
    }
}