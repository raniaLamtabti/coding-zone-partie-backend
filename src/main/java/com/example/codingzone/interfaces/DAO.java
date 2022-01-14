package com.example.codingzone.interfaces;

import com.example.codingzone.config.Config;

import java.sql.Connection;

public interface DAO<T> {

    public Connection connect = Config.getInstance().getConnection();

    public  T find(long id);
    public  T create(T obj);
    public  T update(T obj);
    public  void delete(T obj);
}
