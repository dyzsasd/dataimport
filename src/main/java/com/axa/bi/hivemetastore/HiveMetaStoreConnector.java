package com.axa.bi.hivemetastore;

import com.google.common.base.Joiner;
import com.google.common.collect.Lists;
import org.apache.hadoop.hive.conf.HiveConf;
import org.apache.hadoop.hive.metastore.HiveMetaStoreClient;
import org.apache.hadoop.hive.metastore.api.FieldSchema;
import org.apache.hadoop.hive.metastore.api.MetaException;
import org.apache.hadoop.hive.ql.metadata.Hive;
import org.apache.thrift.TException;

import java.util.List;

public class HiveMetaStoreConnector {
    private HiveConf hiveConf;
    HiveMetaStoreClient hiveMetaStoreClient;

    public HiveMetaStoreConnector(String msAddr, String msPort){
        try {
            hiveConf = new HiveConf(HiveMetaStoreConnector.class);
            hiveConf.setVar(HiveConf.ConfVars.METASTOREURIS, msAddr+":"+ msPort);

            hiveConf.setIntVar(HiveConf.ConfVars.METASTORETHRIFTCONNECTIONRETRIES, 3);
            hiveConf.set(HiveConf.ConfVars.PREEXECHOOKS.varname, "");
            hiveConf.set(HiveConf.ConfVars.POSTEXECHOOKS.varname, "");
            hiveConf.set(HiveConf.ConfVars.HIVE_SUPPORT_CONCURRENCY.varname, "false");
            System.setProperty(HiveConf.ConfVars.PREEXECHOOKS.varname, " ");
            System.setProperty(HiveConf.ConfVars.POSTEXECHOOKS.varname, " ");
            hiveMetaStoreClient = new HiveMetaStoreClient(hiveConf);
        } catch (MetaException e) {
            e.printStackTrace();
            System.exit(-100);
        }
    }

    public static HiveMetaStoreConnector getDefaultMetaStoreConnector(String environmentName){
        if(environmentName == "prod"){
            return new HiveMetaStoreConnector("thrift://prssnbd1nn01.daas.bigdata.intraxa","9083");
        }
        else if(environmentName == "pp"){
            return new HiveMetaStoreConnector("thrift://ppssnbd1nn02.pp.daas.pp-bigdata.intraxa","9083");
        }
        else if(environmentName == "next"){
            return new HiveMetaStoreConnector("thrift://cluster1","9083");
        }
        else{
            return null;
        }
    }

    public String getAllTableStatistic(String dbName){
        List<String> res = Lists.newArrayList();
        try {
            List<String> tableList = hiveMetaStoreClient.getAllTables(dbName);

            for(String tableName:tableList){
                res.addAll(getTableColumnsInformation(dbName,tableName));
            }
        } catch (MetaException e) {
            e.printStackTrace();
            System.exit(-100);
        }

        return Joiner.on("\n").join(res);
    }

    public List<String> getTableColumnsInformation(String dbName, String tableName){
        try {
            List<FieldSchema> fields = hiveMetaStoreClient.getFields(dbName, tableName);
            List<String> infs = Lists.newArrayList();
            for(FieldSchema fs : fields){
                StringBuffer sb = new StringBuffer();
                sb.append(fs.getName());
                sb.append("\t");
                sb.append(fs.getType());
                sb.append("\t");
                sb.append(fs.getComment());
                infs.add(sb.toString());
            }

            return infs;

        } catch (TException e) {
            e.printStackTrace();
            System.exit(-100);
            return null;
        }
    }
}
