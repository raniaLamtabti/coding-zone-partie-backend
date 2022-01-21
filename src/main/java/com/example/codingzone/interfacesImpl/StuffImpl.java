package com.example.codingzone.interfacesImpl;

import com.example.codingzone.config.Config;
import com.example.codingzone.helpers.Queries;
import com.example.codingzone.interfaces.DAO;
import com.example.codingzone.models.Stuff;

import java.sql.*;
import java.util.List;

public class StuffImpl implements DAO<Stuff> {

    Connection conn = Config.getInstance().getConnection();
    Statement stmt;
    ResultSet rs;
    PreparedStatement pstmt;


    public Boolean login(String email, String password)  {
       try {
           String query = Queries.login("stuff",email, password);
            pstmt = conn.prepareStatement(query);
            rs = pstmt.executeQuery();
            return pstmt.getResultSet().next();
       } catch (Exception e) {
           e.printStackTrace();
           return false;
       }

    }


    @Override
    public List<Stuff> findAll() {
        return null;
    }

    @Override
    public Stuff find(long id) {
        return null;
    }

    @Override
    public Stuff create(Stuff obj) {
        return null;
    }

    @Override
    public Stuff update(Stuff obj) {
        return null;
    }

    @Override
    public void delete(Stuff obj) {
        // delete
    }


}
