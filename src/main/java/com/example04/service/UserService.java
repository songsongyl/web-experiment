package com.example04.service;

import com.example04.entity.User;

import java.util.List;

public interface UserService {
    /**
     * 查询全部用户
     */
    public List<User> listUsers();
    /**
     * 添加用户
     */
    public void addUser(String name);
    /**
     * 基于ID获取指定用户
     */
    public User getUser(int id);

}
