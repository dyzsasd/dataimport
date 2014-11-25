package com.axa.bi.jdbc;

import java.sql.*;

/**
 * Created by matthieublanc on 26/06/14.
 */
public class TestJdbcConnection {


    public static void main(String[] args) {
        try {
            Class.forName("org.apache.hive.jdbc.HiveDriver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.exit(1);
        }
        run();
    }

    public static void run() {
        String jdbcURL = "jdbc:hive2://prssncdhna01.pr.incubator.intraxa:10000/pisquare";
        String jdbcUser = "login";
        String jdbcPassword = "PASSAXA";

        try (Connection conn = DriverManager.getConnection(jdbcURL, jdbcUser, jdbcPassword);
             Statement stmt = conn.createStatement()) {
            ResultSet res = stmt.executeQuery("select * from pisquare.crdb_1212");
            System.out.println("ResultSet --------------------");
            while (res.next()) {
                System.out.println(res.getString(1));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
