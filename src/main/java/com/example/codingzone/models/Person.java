package com.example.codingzone.models;

import lombok.*;

import java.util.UUID;

@ToString
public class Person {
        @Getter private String id;
        @Getter @Setter
        private String firstName;
        @Getter @Setter
        private String lastName;
        @Getter @Setter
        private String email;

        public Person() {
            this.id = UUID.randomUUID().toString();
        }
        public Person(String firstName, String lastName, String email) {
                this.id = UUID.randomUUID().toString();
                this.firstName = firstName;
                this.lastName = lastName;
                this.email = email;
        }



}
