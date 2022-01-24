package com.example.codingzone.helpers;

public class Queries {
    static StringBuilder sb;


    public static final String getAll(String tableName) {
        return "SELECT * FROM " + tableName;
    }

    public static final String login(String tableName, String email, String password) {
        return "SELECT * FROM " + tableName + " WHERE email = '" + email + "' AND password = '" + password + "'";
    }
    public static final String getById(String tableName, Long id) {
        return "SELECT * FROM " + tableName + " WHERE id = " + id;
    }

    public static final String insert(String tableName, int columnNumber) {
        sb=new StringBuilder();
        sb.append("INSERT INTO "+tableName+" VALUES (");

        if(columnNumber>1) {
            for(int i=1;i<columnNumber;i++) {
                sb.append("?,");
            }
        }
        sb.append("?)");
        return sb.toString();
    }


}
