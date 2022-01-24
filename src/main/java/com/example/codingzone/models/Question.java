package com.example.codingzone.models;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.UUID;

@ToString @AllArgsConstructor
public class Question {

  @Getter @Setter
  private long id;
  @Getter @Setter
  private String content;
  @Getter @Setter
  private int timeToLive;
  @Getter @Setter
  private int score;
  @Getter @Setter
  private Test test;



  public Question() {
    this.id = UUID.randomUUID().getMostSignificantBits();
  }


}
