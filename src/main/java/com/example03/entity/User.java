package com.example03.entity;

import java.time.LocalDateTime;

public class User {
    private int id;
    private String name;
    private LocalDateTime insertTime;
    private LocalDateTime updateTime;

    public User() {
    }

    public User(int id, String name, LocalDateTime insertTime, LocalDateTime updateTime) {
        this.id = id;
        this.name = name;
        this.insertTime = insertTime;
        this.updateTime = updateTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDateTime getInsertTime() {
        return insertTime;
    }

    public void setInsertTime(LocalDateTime insertTime) {
        this.insertTime = insertTime;
    }

    public LocalDateTime getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(LocalDateTime updateTime) {
        this.updateTime = updateTime;
    }
}
