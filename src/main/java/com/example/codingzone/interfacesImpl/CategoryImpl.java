package com.example.codingzone.interfacesImpl;

import com.example.codingzone.config.Config;
import com.example.codingzone.helpers.Queries;
import com.example.codingzone.interfaces.DAO;
import com.example.codingzone.models.Category;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CategoryImpl implements DAO<Category> {

    Connection conn = Config.getInstance().getConnection();
    Statement stmt;
    ResultSet rs;


    @Override
    public List<Category> findAll() {
        ArrayList<Category> categories = new ArrayList<>();
        String query = Queries.getAll("category");
        try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery(query);
            while (rs.next()) {
                Category category = new Category(rs.getString("id"), rs.getString("name"));
                categories.add(category);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return categories;
    }

    @Override
    public Category find(long id) {
        return null;
    }

    @Override
    public Category create(Category obj) {
        return null;
    }

    @Override
    public Category update(Category obj) {
        return null;
    }

    @Override
    public void delete(Category obj) {

    }

    @Override
    public Category login(String email, String password) throws SQLException {
        return null;
    }
}
