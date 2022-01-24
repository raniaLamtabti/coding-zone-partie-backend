package com.example.codingzone.DAOImpl;

import com.example.codingzone.config.Config;
import com.example.codingzone.helpers.Queries;
import com.example.codingzone.DAO.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class StuffImpl implements DAO {

    PreparedStatement pstmt;
    ResultSet rs;
    Connection conn = Config.getInstance().getConnection();

    @Override
    public Object find(long id) {
        return null;
    }

    @Override
    public List findAll() {
        return null;
    }

    @Override
    public Object create(Object obj) {
        return null;
    }

    @Override
    public Object update(Object obj) {
        return null;
    }

    @Override
    public void delete(Object obj) {

    }

    public boolean login(String username, String password) {
        try {
            String sql = Queries.login("stuff", username, password);
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            return rs.next();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

}
