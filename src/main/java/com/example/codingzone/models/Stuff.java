package com.example.codingzone.models;


import lombok.Getter;
import lombok.Setter;

import java.util.UUID;

public class Stuff extends Person{


  @Getter @Setter
  private String password;
  @Getter @Setter
  private Role role;

  public Stuff() {
    super();
  }

  public Stuff(String firstName, String lastName, String email, String password, Role role) {
    super(firstName, lastName, email);
    this.password = password;
    this.role = role;
  }



  // tostring method
  @Override
  public String toString() {
    return "Stuff{" +
            "id=" + getId() +
            ", firstName='" + getFirstName() + '\'' +
            ", lastName='" + getLastName() + '\'' +
            ", email='" + getEmail() + '\'' +
            ", password='" + getPassword() + '\'' +
            ", role=" + getRole() +
            '}';
  }




}




