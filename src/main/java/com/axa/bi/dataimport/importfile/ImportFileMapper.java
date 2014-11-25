package com.axa.bi.dataimport.importfile;

import com.axa.bi.dataimport.filter.Filter;
import com.axa.bi.dataimport.filter.KeyValue;
import com.axa.bi.dataimport.model.DataSet;
import com.axa.bi.dataimport.transformation.Transformation;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.common.base.Joiner;
import com.google.common.base.Splitter;
import com.google.common.collect.Lists;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.NullWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.List;

public class ImportFileMapper extends Mapper<LongWritable, Text, Text, NullWritable> {

    public static Logger logger = LoggerFactory.getLogger(ImportFileMapper.class);

    private Text result = new Text();

    private DataSet dataSet;


    @Override
    protected void setup(Context context) throws IOException, InterruptedException {
        Configuration configuration = context.getConfiguration();

        ObjectMapper mapper = new ObjectMapper();
        dataSet = mapper.readValue(new File("schema.json"), DataSet.class);

        super.setup(context);
    }

    @Override
    protected void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {

        String data = new String(value.getBytes(), 0, value.getLength(), Charset.forName(dataSet.getCharset()));

        Filter filter = dataSet.getFilter();
        if (filter != null && !filter.getPredicate().apply(new KeyValue(key.get(), value.toString()))) {
            return;
        }

        List<String> items = Splitter.on(dataSet.getDelimiter()).splitToList(data);
        List<String> modifiedItems = Lists.newArrayList();
        for (int i = 0; i < items.size(); i++) {
            String field = items.get(i);
            Transformation transformation = dataSet.getHiveTable().getHiveFields().get(i).getTransformation();//transformationMap.get(i);
            if (transformation != null) {
                modifiedItems.add(transformation.getFunction().apply(field));
            } else {
                modifiedItems.add(field);
            }
        }
        result.set(Joiner.on(dataSet.getDelimiter()).join(modifiedItems));
        context.write(result, NullWritable.get());
    }

}
