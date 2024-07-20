package com.entity;

import java.time.LocalDateTime;

public class User {
    private String id;
    private String name;
    private String content;
    private LocalDateTime insertTime;

    public User() {
    }

    public User(String id, String name) {
        this.id = id;
        this.name = name;
    }

    public User(String id, String name, LocalDateTime insertTime,String content) {
        this.id = id;
        this.name = name;
        this.insertTime = insertTime;
        this.content=content;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String id) {
        this.content = content;
    }
    public LocalDateTime getInsertTime() {
        return insertTime;
    }

    public void setInsertTime(LocalDateTime insertTime) {
        this.insertTime = insertTime;
    }
}