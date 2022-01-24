package com.example.codingzone.models;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.UUID;

@ToString
public class TestCategory {
    @Getter
    @Setter
    private long id;
    @Getter
    @Setter
    private String name;

    public TestCategory() {
        this.id = UUID.randomUUID().getMostSignificantBits();
    }

    public TestCategory(long id, String name) {
        this.id = id;
        this.name = name;
    }

}
