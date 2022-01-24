package com.example.codingzone.DAOImpl;

import com.example.codingzone.DAO.DAO;
import com.example.codingzone.DAO.DAOFactory;
import com.example.codingzone.config.Config;
import com.example.codingzone.helpers.Queries;
import com.example.codingzone.models.Question;
import com.example.codingzone.models.TestCategory;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class TestCategoryDAO implements DAO<TestCategory> {

    List<TestCategory> testCategories;
    ResultSet rs;
    PreparedStatement pstmt;


    @Override
    public TestCategory find(long id) {
        try {
            TestCategory testCategory = new TestCategory();
            pstmt = Config.getInstance().getConnection().prepareStatement(Queries.getById("test_category", id));
            rs = pstmt.executeQuery();
            if (rs.next()) {
                testCategory.setId(rs.getLong("id"));
                testCategory.setName(rs.getString("name"));
                return testCategory;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<TestCategory> findAll() {
        ArrayList<TestCategory> categories = new ArrayList<>();
        try {
            pstmt = Config.getInstance().getConnection().prepareStatement(Queries.getAll("test_category"));
            rs = pstmt.executeQuery();
            while (rs.next()) {
                categories.add(new TestCategory(rs.getLong("id"), rs.getString("name")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return categories;
    }

    @Override
    public TestCategory create(TestCategory obj) {
        return null;
    }

    @Override
    public TestCategory update(TestCategory obj) {
        return null;
    }

    @Override
    public void delete(TestCategory obj) {

    }
}
