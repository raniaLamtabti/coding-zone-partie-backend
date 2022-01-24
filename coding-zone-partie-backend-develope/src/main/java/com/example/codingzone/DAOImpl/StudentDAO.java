package com.example.codingzone.DAOImpl;

import com.example.codingzone.DAO.DAO;
import com.example.codingzone.config.Config;
import com.example.codingzone.helpers.Queries;
import com.example.codingzone.models.Student;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class StudentDAO implements DAO<Student> {
    ResultSet rs;
    PreparedStatement pstmt;

    @Override
    public Student find(long id) {
        try {
            pstmt = Config.getInstance().getConnection().prepareStatement(Queries.getById("student", id));
            rs = pstmt.executeQuery();
            if (rs.next()) {
                return new Student(rs.getLong("id"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("email") );
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Student> findAll() {
        return null;
    }

    @Override
    public Student create(Student obj) {
        return null;
    }

    @Override
    public Student update(Student obj) {
        return null;
    }

    @Override
    public void delete(Student obj) {

    }
}
