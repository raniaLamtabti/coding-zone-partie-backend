package com.example.codingzone.DAO;

import com.example.codingzone.DAOImpl.*;

public class DAOFactory {

    // Stuff =================================
    public static StuffImpl getStuffImpl() {
        return new StuffImpl();
    }

    // Test Category ======================================
    public static TestCategoryDAO getTestCategoryDAO() {
        return new TestCategoryDAO();
    }

    //  Test DAO ======================================
    public static TestDAO getTestDAO() {
        return new TestDAO();
    }

    // Student DAO ======================================
    public static StudentDAO getStudentDAO() {
        return new StudentDAO();
    }

    // Test Student DAO ======================================
    public static TestStudentDAO getTestStudentDAO() {return new TestStudentDAO();}

    // Question DAO ======================================
    public static QuestionDAO getQuestionDAO() {
        return new QuestionDAO();
    }

    // Answer DAO ======================================
    public static AnswerDAO getAnswerDAO() {
        return new AnswerDAO();
    }
    // Test Result DAO ======================================
    public static TestResultDAO getTestResultDAO() {
        return new TestResultDAO();
    }


}
