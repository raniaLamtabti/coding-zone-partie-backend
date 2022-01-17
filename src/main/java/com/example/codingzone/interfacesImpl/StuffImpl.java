package com.example.codingzone.interfacesImpl;

import com.example.codingzone.config.Config;
import com.example.codingzone.helpers.Queries;
import com.example.codingzone.interfaces.DAO;
import com.example.codingzone.models.Stuff;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

public class StuffImpl implements DAO<Stuff> {

    Connection conn;
    Statement stmt;
    ResultSet rs;

    @Override
    public Stuff login(String email, String password) throws SQLException {
        Stuff stuff = new Stuff();
        conn = Config.getInstance().getConnection();
        stmt = conn.createStatement();
        String query = Queries.login("stuff",email, password);
        rs = stmt.executeQuery(query);
        if (rs.next()) {
            stuff.setId(String.valueOf(rs.getLong("id")));
            stuff.setFirstName(rs.getString("firstname"));
            stuff.setLastName(rs.getString("lastname"));
            stuff.setEmail(rs.getString("email"));
            stuff.setPassword(rs.getString("password"));
            stuff.setRoleId(rs.getString("role_id"));
            return stuff;
        } else {
            return null;
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
