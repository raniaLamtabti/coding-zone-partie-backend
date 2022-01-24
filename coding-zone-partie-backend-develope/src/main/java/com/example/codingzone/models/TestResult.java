package com.example.codingzone.models;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.UUID;

@ToString
public class TestResult {
  @Getter
  @Setter
  private long id;
  @Getter @Setter
  private TestStudent testStudent;
  @Getter @Setter
  private long score;
  @Getter @Setter
  private Question question;
  @Getter @Setter
  private Answer answer;
  @Getter @Setter
  private Test test;
  @Getter @Setter
  private long reponseTime;


  public TestResult() {
    this.id = UUID.randomUUID().getMostSignificantBits();

  }

  public TestResult(TestStudent testStudent, long score, Question question, Answer answer, Test test, long reponseTime) {
    this.testStudent = testStudent;
    this.score = score;
    this.question = question;
    this.answer = answer;
    this.test = test;
    this.reponseTime = reponseTime;
    this.id = UUID.randomUUID().getMostSignificantBits();
  }
}



