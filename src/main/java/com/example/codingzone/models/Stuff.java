package com.example.codingzone.models;


import lombok.Getter;
import lombok.Setter;

import java.util.UUID;

public class Stuff extends Person{


  @Getter @Setter
  private String password;
  @Getter @Setter
  private String roleId;

  public Stuff() {
    super();
  }

  public Stuff(String firstName, String lastName, String email, String password, String roleId) {
    super(firstName, lastName, email);
    this.password = password;
    this.roleId = roleId;
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
            ", role=" + getRoleId() +
            '}';
  }




}




