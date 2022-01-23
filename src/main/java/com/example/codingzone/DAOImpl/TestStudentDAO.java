package com.example.codingzone.DAOImpl;

import com.example.codingzone.DAO.DAO;
import com.example.codingzone.DAO.DAOFactory;
import com.example.codingzone.config.Config;
import com.example.codingzone.helpers.Queries;
import com.example.codingzone.models.TestStudent;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class TestStudentDAO implements DAO<TestStudent> {

    ResultSet rs;
    PreparedStatement pstmt;


    @Override
    public TestStudent find(long id) {
        return null;
    }

    @Override
    public List<TestStudent> findAll() {
        List<TestStudent> testStudents = new ArrayList<>();
        try {
            pstmt = Config.getInstance().getConnection().prepareStatement(Queries.getAll("test_student"));
            rs = pstmt.executeQuery();
            while (rs.next()) {
                TestStudent testStudent = new TestStudent();
                testStudent.setId(rs.getLong("id"));
                testStudent.setStudent(DAOFactory.getStudentDAO().find(rs.getLong("student_id")));
                testStudent.setTest(DAOFactory.getTestDAO().find(rs.getLong("test_id")));
                testStudent.setAccessToken(rs.getString("access_token"));
                testStudent.setTake(rs.getBoolean("take"));
                testStudents.add(testStudent);
                return testStudents;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public TestStudent create(TestStudent obj) {
        return null;
    }

    @Override
    public TestStudent update(TestStudent obj) {
        return null;
    }

    @Override
    public void delete(TestStudent obj) {

    }
}
