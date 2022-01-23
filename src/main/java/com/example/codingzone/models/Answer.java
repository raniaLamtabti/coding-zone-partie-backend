package com.example.codingzone.models;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.UUID;

@ToString
public class Answer {
    @Getter
    @Setter
    private long id;
    @Getter
    @Setter
    private String content;
    @Getter
    @Setter
    private String isCorrect;
    @Getter
    @Setter
    private Question question;

    public Answer(String content, String isCorrect, Question question) {
        this.id = UUID.randomUUID().getMostSignificantBits();
        this.content = content;
        this.isCorrect = isCorrect;
        this.question = question;
    }

    public Answer() {
        this.id = UUID.randomUUID().getMostSignificantBits();

    }


}
