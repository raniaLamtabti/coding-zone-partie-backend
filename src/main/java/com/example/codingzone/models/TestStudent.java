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
  private String testId;
  @Getter @Setter
  private String accessCode;


  public TestStudent() {
    this.id = UUID.randomUUID().toString();
  }

  public TestStudent(String testId, String accessCode) {
    this.id = UUID.randomUUID().toString();
    this.testId = testId;
    this.accessCode = accessCode;
  }


}
