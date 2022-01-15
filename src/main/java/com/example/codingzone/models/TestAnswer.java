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
  private TestStudent student;
  @Getter @Setter
  private Question question;
  @Getter @Setter
  private Answer answer;

  public TestAnswer(){
    this.id = UUID.randomUUID().toString();
  }


  public TestAnswer( TestStudent student, Question question, Answer answer) {
    this.id = UUID.randomUUID().toString();
    this.student = student;
    this.question = question;
    this.answer = answer;
  }
}
