package com.example.codingzone.helpers;

public class Queries {


    public static final String getAll(String tableName) {
        return "SELECT * FROM " + tableName;
    }

    public static final String login(String tableName, String email, String password) {
        return "SELECT * FROM " + tableName + " WHERE email = '" + email + "' AND password = '" + password + "'";
    }
    public static final String getById(String tableName, Long id) {
        return "SELECT * FROM " + tableName + " WHERE id = " + id;
    }


}
