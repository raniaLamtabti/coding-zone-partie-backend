package com.example.codingzone.models;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.UUID;
@ToString
public class Answer {
  @Getter
  private String id;
  @Getter @Setter
  private String name;
  @Getter @Setter
  private String questionId;
  @Getter @Setter
  private boolean isCorrect;


  public Answer() {
    this.id = UUID.randomUUID().toString();
  }

  public Answer(String name, String questionId, boolean isCorrect) {
    this.id = UUID.randomUUID().toString();
    this.name = name;
    this.questionId = questionId;
    this.isCorrect = isCorrect;
  }

}
