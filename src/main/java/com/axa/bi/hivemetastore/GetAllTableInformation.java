package com.axa.bi.hivemetastore;

/**
 * Created by S-ZHANG on 19/11/2014.
 */
public class GetAllTableInformation {
    public static void main(String[] args){
        HiveMetaStoreConnector hiveMetaStoreConnector = HiveMetaStoreConnector.getDefaultMetaStoreConnector("next");
        if(hiveMetaStoreConnector != null){
            System.out.print(hiveMetaStoreConnector.getAllTableStatistic("pisquare"));
        }
    }
}
