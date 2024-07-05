package com.kesheExample.controller;

import com.kesheExample.util.DataSourceUtils;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/nefu/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      String id = req.getParameter("identity");
      String name = req.getParameter("username");
      String password = req.getParameter("password");
      String phone = req.getParameter("phone");
      String sex = req.getParameter("sex");
      int age = Integer.parseInt(req.getParameter("age"));
      String tableName = "User1";
        if(id.equals("admin")){
            tableName = "admin";
        }
        String sql = "INSERT INTO " + tableName + "(id, name, password, phone, sex, age)VALUES (?, ?, ?,?,?, ?)";
        try(Connection con = DataSourceUtils.getConnection();
              PreparedStatement ps = con.prepareStatement(sql)){
              ps.setString(1,id);
              ps.setString(2,name);
              ps.setString(3,password);
              ps.setString(4,phone);
              ps.setString(5,sex);
              ps.setInt(6,age);
              ps.executeUpdate();
          } catch (SQLException e) {
              throw new RuntimeException(e);
          }

      resp.sendRedirect(req.getContextPath()+"/nefu/login");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/keshe/register.jsp");
    }
}
