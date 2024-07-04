package com.kesheExample.entity;

public class Admin {
    private Title id;
    private String name;
    private String password;
    private String phone;
    private Sex sex;
    private int age;
    public enum Sex {
        FEMALE,MALE
    }
    public enum Title {
        ADMIN,USER
    }

    public Admin(Title id, String name, String password, String phone, Sex sex, int age) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.phone = phone;
        this.sex = sex;
        this.age = age;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public Sex getSex() {
        return sex;
    }

    public void setSex(Sex sex) {
        this.sex = sex;
    }

    public void setId(Title id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
