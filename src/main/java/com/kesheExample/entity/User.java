package com.kesheExample.entity;

public class User {
    private Title id;
    private String name;
    private String password;
    private String phone;
    private Admin.Sex sex;
    private int age;
    public enum Sex {
        FEMALE,MALE
    }
    public enum Title {
        ADMIN,USER
    }

    public User(Title id, String name, String password, String phone, Admin.Sex sex, int age) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.phone = phone;
        this.sex = sex;
        this.age = age;
    }
    public static User.Sex getSexFromString(String sexStr) {
        switch (sexStr.toUpperCase()) {
            case "MALE":
                return User.Sex.MALE;
            case "FEMALE":
                return User.Sex.FEMALE;
            default:
                throw new IllegalArgumentException("Invalid sex: " + sexStr);
        }
    }
    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public Admin.Sex getSex() {
        return sex;
    }

    public void setSex(Admin.Sex sex) {
        this.sex = sex;
    }

    public Title getId() {
        return id;
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
