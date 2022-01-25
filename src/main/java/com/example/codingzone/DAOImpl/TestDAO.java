package com.example.codingzone.DAOImpl;

import com.example.codingzone.DAO.DAO;
import com.example.codingzone.DAO.DAOFactory;
import com.example.codingzone.config.Config;
import com.example.codingzone.helpers.Queries;
import com.example.codingzone.models.Test;
import com.example.codingzone.models.TestCategory;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class TestDAO implements DAO<Test> {
    ResultSet rs;
    PreparedStatement pstmt;

    @Override
    public Test find(long id) {
        try {
            pstmt = Config.getInstance().getConnection().prepareStatement(Queries.getById("test", id));
            rs = pstmt.executeQuery();
            if (rs.next()) {
                TestCategory testCategory = DAOFactory.getTestCategoryDAO().find(rs.getLong("test_category_id"));
                return new Test(rs.getLong("id"), rs.getString("name"), rs.getString("description"), testCategory, rs.getDate("start_time"), rs.getDate("end_time") );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Test> findAll() {
        ArrayList<Test> tests = new ArrayList<>();
        try {
            pstmt = Config.getInstance().getConnection().prepareStatement(Queries.getAll("test"));
            rs = pstmt.executeQuery();
            while (rs.next()) {
                TestCategory testCategory = DAOFactory.getTestCategoryDAO().find(rs.getLong("test_category_id"));
                tests.add(new Test(rs.getLong("id"), rs.getString("name"), rs.getString("description"), testCategory, rs.getDate("start_time"), rs.getDate("end_time")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }


        return tests;
    }

    @Override
    public Test create(Test obj) {
        try {
            pstmt = Config.getInstance().getConnection().prepareStatement(Queries.insert("test", 4));
            pstmt.setLong(1, obj.getId());
            pstmt.setString(2, obj.getName());
            pstmt.setString(3, obj.getDescription());
            pstmt.setLong(4, obj.getCategory().getId());

            pstmt.executeUpdate();


        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Test update(Test obj) {
        return null;
    }

    @Override
    public void delete(Test obj) {

    }
}
