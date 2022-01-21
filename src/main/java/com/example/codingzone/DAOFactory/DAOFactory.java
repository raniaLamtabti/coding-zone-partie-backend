package com.example.codingzone.DAOFactory;

import com.example.codingzone.interfaces.DAO;
import com.example.codingzone.interfacesImpl.CategoryImpl;
import com.example.codingzone.interfacesImpl.StuffImpl;
import com.example.codingzone.interfacesImpl.TestImpl;
import com.example.codingzone.models.Category;
import com.example.codingzone.models.Test;

public class DAOFactory {


    // stuff =================================
    public static StuffImpl getStuffImpl() {
        return new StuffImpl();
    }
    // category =================================
    public static DAO<Category> getCategoryImpl() {
        return new CategoryImpl();
    }

    // test =================================
    public static DAO<Test> getTestImpl() {
        return new TestImpl();
    }
}
