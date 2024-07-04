package com.kesheExample.controller;

import com.kesheExample.entity.User;
import com.kesheExample.util.DataSourceUtils;
import com.kesheExample.entity.Admin;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/nefu/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/keshe/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("username");
        String psw = req.getParameter("password");
        String id = req.getParameter("identity");
        String sql = "select name,password from ?";
        List<User> users = new ArrayList<>();
        List<Admin> admins = new ArrayList<>();
        String url = "/nefu/login";
        try (Connection con = DataSourceUtils.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);) {
            ps.setString(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()){
                    if(id.equals("ADMIN")){
                        Admin admin = new Admin(rs.getObject("id", Admin.Title.class),rs.getString("name"),rs.getString("password"),rs.getString("phone"),rs.getObject("sex", Admin.Sex.class),rs.getInt("age"));
                        admins.add(admin);
                        for (Admin admin1:admins){
                            if(admin1.getName().equals(name)&&admin1.getPassword().equals(psw)){
                                req.getSession().setAttribute("admin",admin1);
                                url = "/nefu";
                            }
                        }
                    }else{
                        User user = new User(rs.getObject("id", User.Title.class),rs.getString("name"),rs.getString("password"),rs.getString("phone"),rs.getObject("sex", Admin.Sex.class),rs.getInt("age"));
                        users.add(user);
                        for(User user1:users){
                            if(user1.getName().equals(name)&&user1.getPassword().equals(psw)){
                               req.getSession().setAttribute("user",user1);
                                url = "/nefu";
                            }
                        }
                    }
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        resp.sendRedirect(req.getContextPath()+url);
    }
}