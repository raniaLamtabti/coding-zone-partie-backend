package com.example.codingzone.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.UUID;

@ToString @AllArgsConstructor
public class TestStudent {
  @Getter @Setter
  private long id;
  @Getter @Setter
  private Test test;
  @Getter @Setter
  private Student student;
  @Getter @Setter
  private String accessToken;
  @Getter @Setter
  private boolean isTake;

  public TestStudent() {
    this.isTake = false;
    this.id = UUID.randomUUID().getMostSignificantBits();
  }





}
