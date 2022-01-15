package com.example.codingzone.models;

import lombok.AllArgsConstructor;
import lombok.ToString;

import java.io.Serializable;


public class Student extends Person  {


  public Student() {
    super();
  }

   public Student( String firstName, String lastName, String email) {
    super(firstName, lastName, email);
  }

  @Override
  public String toString() {
    return "Student{" +
            "id=" + getId() +
            ", firstName='" + getFirstName() + '\'' +
            ", lastName='" + getLastName() + '\'' +
            ", email='" + getEmail() + '\'' +
            '}';
  }

}
