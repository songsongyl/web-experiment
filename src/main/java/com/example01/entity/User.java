package com.example01.entity;

public class User {
    private String name;
    private String account;
    private String password;

    public User(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public String getAccount() {
        return account;
    }

    public String getPassword() {
        return password;
    }
}
