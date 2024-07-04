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
        String sql = "insert into ? values(?,?,?,?,?,?)";
      if(id.equals("USER")){
          try(Connection con = DataSourceUtils.getConnection();
              PreparedStatement ps = con.prepareStatement(sql)){
              ps.setString(1,"User1");
              ps.setString(2,id);
              ps.setString(3,name);
              ps.setString(4,password);
              ps.setString(5,phone);
              ps.setString(6,sex);
              ps.setInt(7,age);
              ps.executeUpdate();
          } catch (SQLException e) {
              throw new RuntimeException(e);
          }
      }else{
          try(Connection con = DataSourceUtils.getConnection();
              PreparedStatement ps = con.prepareStatement(sql)){
              ps.setString(1,"admin");
              ps.setString(2,id);
              ps.setString(3,name);
              ps.setString(4,password);
              ps.setString(5,phone);
              ps.setString(6,sex);
              ps.setInt(7,age);
              ps.executeUpdate();
          } catch (SQLException e) {
              throw new RuntimeException(e);
          }
      }
      resp.sendRedirect(req.getContextPath()+"/nefu/register");
    }
}
