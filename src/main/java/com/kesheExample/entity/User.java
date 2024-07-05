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
        if ("男".equals(sexStr)) {
            return User.Sex.MALE;
        } else if ("女".equals(sexStr)) {
            return User.Sex.FEMALE;
        }
        sexStr = sexStr.toUpperCase(); // 转换为大写以便统一处理
        if ("MALE".equals(sexStr)) {
            return User.Sex.MALE;
        } else if ("FEMALE".equals(sexStr)) {
            return User.Sex.FEMALE;
        }
        // 如果以上条件都不满足，则抛出异常
        throw new IllegalArgumentException("Invalid sex: " + sexStr);
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
