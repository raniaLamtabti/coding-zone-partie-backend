package com.example.codingzone.config;

import java.sql.Connection;
import java.sql.DriverManager;

public class Config {
    private static String url = "jdbc:postgresql://localhost:5432/coding_zone";
    private static String user = "postgres";
    private static String passwd = "1234";
    private static Connection connect;
    private static final Config INSTANCE = new Config();

    private Config() {
    }

    public static Config getInstance() {
        return INSTANCE;
    }

    public Connection getConnection() {
        try {
            Class.forName("org.postgresql.Driver");
            connect = DriverManager.getConnection(url, user, passwd);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connect;
    }
}





