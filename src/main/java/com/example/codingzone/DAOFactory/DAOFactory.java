package com.example.codingzone.DAOFactory;

import com.example.codingzone.interfaces.DAO;
import com.example.codingzone.interfacesImpl.StuffImpl;
import com.example.codingzone.models.Stuff;

public class DAOFactory {


    // stuff =================================
    public static DAO<Stuff> getStuffImpl() {
        return new StuffImpl();
    }
    // ======================================

}
