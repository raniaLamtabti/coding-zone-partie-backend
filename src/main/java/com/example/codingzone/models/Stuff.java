package com.example.codingzone.models;

import lombok.AllArgsConstructor;
import lombok.ToString;

@AllArgsConstructor @ToString
public class Stuff extends Person{
    private String password;

    public Stuff(String id ,String firstName, String lastName, String email, String password) {
        super(id,firstName, lastName, email);
        this.password = password;
    }
}
