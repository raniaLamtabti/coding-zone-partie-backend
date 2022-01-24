package com.example.codingzone.DAO;

import com.example.codingzone.DAOImpl.*;

public class DAOFactory {

    // stuff =================================
    public static StuffImpl getStuffImpl() {
        return new StuffImpl();
    }
    // ======================================
    public static TestCategoryDAO getTestCategoryDAO() {
        return new TestCategoryDAO();
    }
    // ======================================
    public static TestDAO getTestDAO() {
        return new TestDAO();
    }
    // ======================================
    public static StudentDAO getStudentDAO() {
        return new StudentDAO();
    }
    // ======================================
    public static TestStudentDAO getTestStudentDAO() {
        return new TestStudentDAO();
    }

}
