package com.example.codingzone.models;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.UUID;
@ToString
public class TestStudent {
  @Getter
  private String id;
  @Getter @Setter
  private Test test;
  @Getter @Setter
  private String accessCode;


  public TestStudent() {
    this.id = UUID.randomUUID().toString();
  }

  public TestStudent(Test test, String accessCode) {
    this.id = UUID.randomUUID().toString();
    this.test = test;
    this.accessCode = accessCode;
  }


}
