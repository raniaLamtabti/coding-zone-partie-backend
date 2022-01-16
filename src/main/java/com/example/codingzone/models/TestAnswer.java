package com.example.codingzone.models;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.UUID;
@ToString
public class TestAnswer {
  @Getter
  private String id;
  @Getter @Setter
  private String testStudentId;
  @Getter @Setter
  private String questionId;
  @Getter @Setter
  private String answerId;

  public TestAnswer(){
    this.id = UUID.randomUUID().toString();
  }


  public TestAnswer( String testStudentId, String questionId, String answerId) {
    this.id = UUID.randomUUID().toString();
    this.testStudentId = testStudentId;
    this.questionId = questionId;
    this.answerId = answerId;
  }
}
