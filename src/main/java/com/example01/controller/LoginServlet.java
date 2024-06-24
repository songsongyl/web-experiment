package com.example01.controller;

import com.example01.entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        System.out.println("LoginServlet");
        req.getRequestDispatcher("/WEB-INF/experiment05/login.html").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("userName");
        String pwd = req.getParameter("password");
        String url;
        if(userName.equals("sy")&&pwd.equals("123")){
            User user = new User("张三");
            req.getSession().setAttribute("user",user);
            url = "/welcome";
        }else {
            url = "/login";
        }
        resp.sendRedirect(req.getContextPath() + url);
    }
}
