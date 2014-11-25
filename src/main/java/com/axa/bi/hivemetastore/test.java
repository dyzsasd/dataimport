package com.axa.bi.hivemetastore;

import org.apache.hadoop.hive.conf.HiveConf;

/**
 * Created by S-ZHANG on 25/11/2014.
 */
public class test {
    public static void main(String[] args){

        HiveConf hiveConf = new HiveConf();
        hiveConf.setIntVar(HiveConf.ConfVars.METASTORETHRIFTCONNECTIONRETRIES, 3);
        hiveConf.setVar(HiveConf.ConfVars.METASTOREURIS, "thrift://10.235.249.31:9083");

        HiveMetaStoreConnector hiveMetaStoreConnector = new HiveMetaStoreConnector(hiveConf);
        if(hiveMetaStoreConnector != null){
            System.out.print(hiveMetaStoreConnector.getAllTableStatistic(args[1]));
        }
    }
}
