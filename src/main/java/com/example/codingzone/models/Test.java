package com.example.codingzone.models;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.UUID;
@ToString
public class Test {

  @Getter
  private String id;
  @Getter @Setter
  private String name;
  @Getter @Setter
  private int timeToLive;
  @Getter @Setter
  private int score;
  @Getter @Setter
  private String stuffId;
  @Getter
  @Setter
  private String categoryId;

  public Test() {
    this.id = UUID.randomUUID().toString();
  }

  public Test( String name, String stuffId, String categoryId) {
    this.id = UUID.randomUUID().toString();
    this.name = name;

    this.stuffId = stuffId;
    this.categoryId = categoryId;
  }



}
