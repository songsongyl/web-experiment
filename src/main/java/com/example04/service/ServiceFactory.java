package com.example04.service;

import com.example04.service.impl.UserServiceImpl;

public class ServiceFactory {
    private static final UserService userSercice = create();
    private static UserService create(){
        return new UserServiceImpl();
    }
    public static UserService getUserSercice(){
        return  userSercice;
    }
}
