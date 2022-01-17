package com.example.codingzone.interfacesImpl;

import com.example.codingzone.config.Config;
import com.example.codingzone.helpers.Queries;
import com.example.codingzone.interfaces.DAO;
import com.example.codingzone.models.Test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class TestImpl implements DAO<Test> {

    PreparedStatement stmt;
    Connection conn = Config.getInstance().getConnection();


    @Override
    public List<Test> findAll() {
        return null;
    }

    @Override
    public Test find(long id) {
        return null;
    }

    @Override
    public Test create(Test obj) {
        String query = Queries.create("test",4);
        try {
            stmt = conn.prepareStatement(query);
            stmt.setString(1,obj.getName());
            stmt.setString(2,obj.getName());
            stmt.setString(3,obj.getStuffId());
            stmt.setString(4,obj.getCategoryId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return obj;
    }

    @Override
    public Test update(Test obj) {
        return null;
    }

    @Override
    public void delete(Test obj) {

    }

    @Override
    public Test login(String email, String password) throws SQLException {
        return null;
    }
}
