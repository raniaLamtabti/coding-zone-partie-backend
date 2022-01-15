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
  private Stuff stuff;

  public Test() {
    this.id = UUID.randomUUID().toString();
  }

  public Test( String name, int timeToLive, int score, Stuff stuff) {
    this.id = UUID.randomUUID().toString();
    this.name = name;
    this.timeToLive = timeToLive;
    this.score = score;
    this.stuff = stuff;
  }



}
