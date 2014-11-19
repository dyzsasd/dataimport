package com.axa.bi.datareplication;

import com.google.common.base.Charsets;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Splitter;
import com.google.common.collect.Collections2;
import com.google.common.collect.Lists;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.NullWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

import java.io.IOException;
import java.util.List;

public class DataReplicationMapper extends Mapper<LongWritable, Text, Text, NullWritable> {

    private static final char SEPARATOR = ';';
    private List<String> countries = Lists.newArrayList("DE", "FR", "CH", "ES");
    private List<String> years = Lists.newArrayList("2014", "2015", "2016", "2017");
    private List<String> letters = Lists.newArrayList("A", "B", "C", "D");
    private List<String> numbers = Lists.newArrayList("1", "2", "3", "4");
    private Text result = new Text();

    @Override
    protected void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {


        String data = new String(value.getBytes(), 0, value.getLength(), Charsets.ISO_8859_1);
        List<String> cells = Lists.newArrayList(Splitter.on(SEPARATOR).split(data));
        for (final String country : countries) {
            for (int i = 0; i < years.size(); i++) {
                final int index = i;
                List<String> newCells = Lists.newArrayList(Collections2.transform(cells, new Function<String,
                        String>() {
                    @Override
                    public String apply(String cell) {
                        cell = cell.replaceAll("DE", country);
                        cell = cell.replaceAll("A", letters.get(index));
                        if (cell.matches("\\d{8}") || cell.matches("\\d{7}")) {
                            cell = cell.replaceAll("2014", years.get(index));
                            cell = cell.replaceAll("2013", String.valueOf(Integer.parseInt(years.get(index)) - 1));
                        } else {
                            cell = cell.replaceAll("1", numbers.get(index));
                        }
                        return cell;
                    }
                }));

                String newData = Joiner.on(SEPARATOR).join(newCells);
                result.set(newData);
                context.write(result, NullWritable.get());
            }
        }

    }


}
