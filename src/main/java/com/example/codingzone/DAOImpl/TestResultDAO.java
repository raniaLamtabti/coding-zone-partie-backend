package com.example.codingzone.DAOImpl;

import com.example.codingzone.DAO.DAO;
import com.example.codingzone.DAO.DAOFactory;
import com.example.codingzone.config.Config;
import com.example.codingzone.helpers.Queries;
import com.example.codingzone.models.TestResult;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class TestResultDAO implements DAO<TestResult> {

    ResultSet rs;
    PreparedStatement pstmt;

    @Override
    public TestResult find(long id) {

        return null;
    }

    @Override
    public List<TestResult> findAll() {
        List<TestResult> testResults = new ArrayList<>();
        try {
            pstmt = Config.getInstance().getConnection().prepareStatement(Queries.getAll("test_result"));

            rs = pstmt.executeQuery();
            while (rs.next()) {

                TestResult testResult = new TestResult();
                testResult.setId(rs.getLong("id"));
                testResult.setTest(DAOFactory.getTestDAO().find(rs.getLong("test_id")));
                testResult.setTestStudent(DAOFactory.getTestStudentDAO().find(rs.getLong("test_student_id")));
                testResult.setScore(rs.getInt("score"));
                testResult.setQuestion(DAOFactory.getQuestionDAO().find(rs.getLong("question_id")));
                testResult.setAnswer(DAOFactory.getAnswerDAO().find(rs.getLong("answer_id")));
                testResults.add(testResult);
                return testResults;

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public TestResult create(TestResult obj) {
        return null;
    }

    @Override
    public TestResult update(TestResult obj) {
        return null;
    }

    @Override
    public void delete(TestResult obj) {

    }
}
