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
        if (id == null || id.trim().isEmpty()) {
            throw new ServletException("身份标识不能为空");
        }
        if (name == null || name.trim().isEmpty()) {
            throw new ServletException("用户名不能为空");
        }
        if (password == null || password.trim().isEmpty()) {
            throw new ServletException("密码不能为空");
        }
        if (phone == null || phone.trim().isEmpty()) {
            throw new ServletException("电话号码不能为空");
        }
        if (sex == null || sex.trim().isEmpty()) {
            throw new ServletException("性别不能为空");
        }
        String ageStr = req.getParameter("age");
        int age = 0; // 默认值
        if (ageStr != null && !ageStr.trim().isEmpty()) {
            try {
                age = Integer.parseInt(ageStr.trim());
            } catch (NumberFormatException e) {
                // 处理无法转换的情况，例如记录日志或设置错误消息
                // 可以选择抛出一个更具体的错误给用户
                throw new ServletException("年龄必须是有效的整数", e);
            }
        }
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
        req.getRequestDispatcher("/WEB-INF/keshe/register.jsp").forward(req,resp);
//        哈哈哈哈哈，挑了半天bug，一直未成功进入注册页面，最后发现没有写forward
    }
}
