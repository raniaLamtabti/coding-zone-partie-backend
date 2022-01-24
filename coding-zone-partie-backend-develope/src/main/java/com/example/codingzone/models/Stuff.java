package com.example.codingzone.models;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.UUID;

@ToString
public class Stuff {
  @Getter
  @Setter
  private long id;
  @Getter @Setter
  private String name;
  @Getter @Setter
  private String email;
  @Getter @Setter
  private String password;
  @Getter @Setter
  private String description;


  public Stuff() {
    this.id = UUID.randomUUID().getMostSignificantBits();
  }

  public Stuff(String name, String email, String password, String description) {
    this.id = UUID.randomUUID().getMostSignificantBits();
    this.name = name;
    this.email = email;
    this.password = password;
    this.description = description;
  }

}
