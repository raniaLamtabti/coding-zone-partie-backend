package com.example.codingzone.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;
import java.util.UUID;

@ToString @AllArgsConstructor
public class Test {
  @Getter
  @Setter
  private long id;
  @Getter @Setter
  private String name;
  @Getter @Setter
  private String description;
  @Getter @Setter
  private TestCategory category;
  @Getter @Setter
  private Date startTime;
  @Getter @Setter
  private Date endTime;


  public Test() {
    this.id = UUID.randomUUID().getMostSignificantBits();
  }

}
