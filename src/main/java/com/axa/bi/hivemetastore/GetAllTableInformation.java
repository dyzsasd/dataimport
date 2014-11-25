package com.axa.bi.hivemetastore;

import org.apache.hadoop.hive.conf.HiveConf;

public class GetAllTableInformation {
    public static void main(String[] args){

        HiveConf hiveConf = new HiveConf();

        if(args[0]=="pp"){
            hiveConf.setIntVar(HiveConf.ConfVars.METASTORETHRIFTCONNECTIONRETRIES, 3);
            hiveConf.setVar(HiveConf.ConfVars.METASTOREURIS, "thrift://ppssnbd1nn02.pp.daas.pp-bigdata.intraxa:9803");
            hiveConf.setVar(HiveConf.ConfVars.METASTORE_KERBEROS_PRINCIPAL, "hive/_HOST@BIGDATA.INTRAXA");
            hiveConf.setVar(HiveConf.ConfVars.HIVE_SERVER2_KERBEROS_PRINCIPAL, "hive/_HOST@BIGDATA.INTRAXA");
            hiveConf.setVar(HiveConf.ConfVars.HIVE_SERVER2_AUTHENTICATION, "kerberos");
            hiveConf.setBoolVar(HiveConf.ConfVars.METASTORE_USE_THRIFT_SASL, true);
            hiveConf.setBoolVar(HiveConf.ConfVars.HIVE_SERVER2_ENABLE_DOAS, true);
            hiveConf.setVar(HiveConf.ConfVars.HIVE_ZOOKEEPER_NAMESPACE, "hive_zookeeper_namespace_hive");
            hiveConf.setVar(HiveConf.ConfVars.HIVE_ZOOKEEPER_QUORUM, "ppssnbd1nn01.pp.daas.pp-bigdata.intraxa,ppssnbd1nn02.pp.daas.pp-bigdata.intraxa,ppssnbbdincub01.pp.daas.pp-bigdata.intraxa");
            hiveConf.setVar(HiveConf.ConfVars.HIVE_ZOOKEEPER_CLIENT_PORT, "2181");
            hiveConf.setBoolVar(HiveConf.ConfVars.HIVE_SUPPORT_CONCURRENCY, true);
            hiveConf.setBoolVar(HiveConf.ConfVars.METASTORE_EXECUTE_SET_UGI, true);
            hiveConf.setVar(HiveConf.ConfVars.METASTOREWAREHOUSE, "/user/hive/warehouse");
        }else if(args[0] == "prod"){
            hiveConf.setIntVar(HiveConf.ConfVars.METASTORETHRIFTCONNECTIONRETRIES, 3);
            hiveConf.setVar(HiveConf.ConfVars.METASTOREURIS, "thrift://prssnbd1nn01.daas.bigdata.intraxa:9083");
            hiveConf.setVar(HiveConf.ConfVars.METASTORE_KERBEROS_PRINCIPAL, "hive/_HOST@BIGDATA.INTRAXA");
            hiveConf.setVar(HiveConf.ConfVars.HIVE_SERVER2_KERBEROS_PRINCIPAL, "hive/_HOST@BIGDATA.INTRAXA");
            hiveConf.setVar(HiveConf.ConfVars.HIVE_SERVER2_AUTHENTICATION, "kerberos");
            hiveConf.setBoolVar(HiveConf.ConfVars.METASTORE_USE_THRIFT_SASL, true);
            hiveConf.setBoolVar(HiveConf.ConfVars.HIVE_SERVER2_ENABLE_DOAS, true);
            hiveConf.setVar(HiveConf.ConfVars.HIVE_ZOOKEEPER_NAMESPACE, "hive_zookeeper_namespace_hive");
            hiveConf.setVar(HiveConf.ConfVars.HIVE_ZOOKEEPER_QUORUM, "prssnbd1dn03.daas.bigdata.intraxa,prssnbd1dn01.daas.bigdata.intraxa,prssnbd1dn02.daas.bigdata.intraxa");
            hiveConf.setVar(HiveConf.ConfVars.HIVE_ZOOKEEPER_CLIENT_PORT, "2181");
            hiveConf.setBoolVar(HiveConf.ConfVars.HIVE_SUPPORT_CONCURRENCY, true);
            hiveConf.setBoolVar(HiveConf.ConfVars.METASTORE_EXECUTE_SET_UGI, true);
            hiveConf.setVar(HiveConf.ConfVars.METASTOREWAREHOUSE, "/user/hive/warehouse");
        }else if(args[0] == "next"){
            hiveConf.setIntVar(HiveConf.ConfVars.METASTORETHRIFTCONNECTIONRETRIES, 3);
            hiveConf.setVar(HiveConf.ConfVars.METASTOREURIS, "thrift://10.235.249.31:9083");
        }


        HiveMetaStoreConnector hiveMetaStoreConnector = new HiveMetaStoreConnector(hiveConf);
        if(hiveMetaStoreConnector != null){
            System.out.print(hiveMetaStoreConnector.getAllTableStatistic(args[1]));
        }
    }
}
