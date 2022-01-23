package com.example.codingzone.DAO;

import com.example.codingzone.config.Config;

import java.sql.Connection;
import java.util.List;

public interface DAO<T> {


    T find(long id);

    List<T> findAll();

    T create(T obj);

    T update(T obj);

    void delete(T obj);
}
