package com.example.codingzone.DAOImpl;

import com.example.codingzone.DAO.DAO;
import com.example.codingzone.DAO.DAOFactory;
import com.example.codingzone.config.Config;
import com.example.codingzone.helpers.Queries;
import com.example.codingzone.models.Answer;
import com.example.codingzone.models.Question;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AnswerDAO implements DAO<Answer> {
    ResultSet rs;
    PreparedStatement pstmt;


    @Override
    public Answer find(long id) {
        try {
            Answer answer = new Answer();
            pstmt = Config.getInstance().getConnection().prepareStatement(Queries.getById("answer", id));
            rs = pstmt.executeQuery();
            if (rs.next()) {
                answer.setId(rs.getLong("id"));
                answer.setContent(rs.getString("content"));
                answer.setQuestion(DAOFactory.getQuestionDAO().find(rs.getLong("question_id")));
                answer.setCorrect(Boolean.parseBoolean(String.valueOf(rs.getBoolean("is_correct"))));
                return answer;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Answer> findAll() {
        List<Answer> answers = new ArrayList<>();
        try {
            pstmt = Config.getInstance().getConnection().prepareStatement(Queries.getAll("answer"));
            rs = pstmt.executeQuery();
            while (rs.next()) {
                Answer answer = new Answer();
                answer.setId(rs.getLong("id"));
                answer.setContent(rs.getString("content"));
                answer.setQuestion(DAOFactory.getQuestionDAO().find(rs.getLong("question_id")));
                answer.setCorrect(Boolean.parseBoolean(String.valueOf(rs.getBoolean("is_correct"))));
                answers.add(answer);
                 return answers;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Answer create(Answer obj) {
        try {
            pstmt = Config.getInstance().getConnection().prepareStatement(Queries.insert("answer",4));
            pstmt.setLong(1, obj.getId());
            pstmt.setString(2, obj.getContent());
            pstmt.setBoolean(3, obj.isCorrect());
            pstmt.setLong(4, obj.getQuestion().getId());
            pstmt.executeUpdate();
            return obj;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Answer update(Answer obj) {
        return null;
    }

    @Override
    public void delete(Answer obj) {

    }
}
