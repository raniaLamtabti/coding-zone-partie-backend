package com.example.codingzone.DAOImpl;

import com.example.codingzone.DAO.DAO;
import com.example.codingzone.DAO.DAOFactory;
import com.example.codingzone.config.Config;
import com.example.codingzone.helpers.Queries;
import com.example.codingzone.models.Question;
import com.example.codingzone.models.Test;
import com.example.codingzone.models.TestCategory;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class QuestionDAO implements DAO<Question> {
    ResultSet rs;
    PreparedStatement pstmt;

    @Override
    public Question find(long id) {
        try {
            Question question = new Question();
            pstmt = Config.getInstance().getConnection().prepareStatement(Queries.getById("question", id));
            rs = pstmt.executeQuery();
            if (rs.next()) {
                question.setId(rs.getLong("id"));
                question.setContent(rs.getString("content"));
                question.setTimeToLive(rs.getInt("time_to_live"));
                question.setScore(rs.getInt("score"));
                question.setTest(DAOFactory.getTestDAO().find(rs.getLong("test_id")));
                return question;

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Question> findAll() {
        List<Question> questions = new ArrayList<>();
        try {
            pstmt = Config.getInstance().getConnection().prepareStatement(Queries.getAll("question"));
            rs = pstmt.executeQuery();
            while (rs.next()) {
                Question question = new Question();
                question.setId(rs.getLong("id"));
                question.setContent(rs.getString("content"));
                question.setTimeToLive(rs.getInt("time_to_live"));
                question.setScore(rs.getInt("score"));
                question.setTest(DAOFactory.getTestDAO().find(rs.getLong("test_id")));
                questions.add(question);
                return questions;

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Question create(Question obj) {
        try {
            pstmt = Config.getInstance().getConnection().prepareStatement(Queries.insert("question", 5));
            pstmt.setLong(1, obj.getId());
            pstmt.setString(2, obj.getContent());
            pstmt.setInt(3, obj.getTimeToLive());
            pstmt.setInt(4, obj.getScore());
            pstmt.setLong(5, obj.getTest().getId());
            pstmt.executeUpdate();
            return obj;

        }   catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Question update(Question obj) {
        return null;
    }

    @Override
    public void delete(Question obj) {

    }
}
