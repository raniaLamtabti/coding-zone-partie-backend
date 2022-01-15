package com.example.codingzone.models;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.UUID;

@ToString
public class Role {

  @Getter
  private String id;
  @Getter @Setter
  private String name;


  public Role() {
    this.id = UUID.randomUUID().toString();
  }

  public Role(String name) {
    this.id = UUID.randomUUID().toString();
    this.name = name;
  }

}
