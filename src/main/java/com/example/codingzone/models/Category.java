package com.example.codingzone.models;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.UUID;

@ToString
public class Category {

  @Getter @Setter
  private String id;
  @Getter @Setter
  private String name;
  @Getter @Setter
  private String description;

  public Category() {
    this.id = UUID.randomUUID().toString();
  }

  public Category( String name, String description) {
    this.id = UUID.randomUUID().toString();
    this.name = name;
    this.description = description;
  }

}
