package com.example.codingzone.interfaces;

import com.example.codingzone.config.Config;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public interface DAO<T> {

    public Connection connect = Config.getInstance().getConnection();
    // find all
    public List<T> findAll();
    public  T find(long id);
    public  T create(T obj);
    public  T update(T obj);
    public  void delete(T obj);

    //T login(String email, String password) throws SQLException;




}
