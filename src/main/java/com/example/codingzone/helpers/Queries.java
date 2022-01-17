package com.example.codingzone.helpers;

public class Queries {


    public static final String getAll(String tableName) {
        return "SELECT * FROM " + tableName;
    }

    public static final String login(String tableName, String email, String password) {
        return "SELECT * FROM " + tableName + " WHERE email = '" + email + "' AND password = '" + password + "'";
    }

    public static final String create(String tableName, int columCount) {
        String query = "INSERT INTO " + tableName + " VALUES(";
        for (int i = 0; i < columCount; i++) {
            query += "?";
            if (i != columCount - 1) {
                query += ",";
            }
        }
        query += ")";
        return query;
    }

    public static final String update(String tableName, int columCount) {
        String query = "UPDATE " + tableName + " SET ";
        for (int i = 0; i < columCount; i++) {
            query += "?";
            if (i != columCount - 1) {
                query += ",";
            }
        }
        query += " WHERE id = ?";
        return query;
    }

    public static final String delete(String tableName, String id) {
        return "DELETE FROM " + tableName + " WHERE id = " + id;
    }

}
