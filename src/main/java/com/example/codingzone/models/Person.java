package com.example.codingzone.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.UUID;

@ToString @AllArgsConstructor
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


}
