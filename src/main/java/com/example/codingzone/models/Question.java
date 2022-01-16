package com.example.codingzone.models;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.UUID;
@ToString
public class Question {
  @Getter
  private String id;
  @Getter @Setter
  private String name;
  @Getter @Setter
  private int timeToLive;
  @Getter @Setter
  private int score;
  @Getter @Setter
  private String testId;


  public Question() {
    this.id = UUID.randomUUID().toString();
  }

  public Question(String name, int timeToLive, int score, String testId) {
    this.id = UUID.randomUUID().toString();
    this.name = name;
    this.timeToLive = timeToLive;
    this.score = score;
    this.testId = testId;
  }
}




