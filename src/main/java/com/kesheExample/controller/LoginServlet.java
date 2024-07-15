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

import static com.kesheExample.entity.Admin.getSexFromString;

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
        String tableName = "User1"; // 假设根据某些逻辑决定使用哪个表
        if(id.equals("ADMIN")){
            tableName = "admin";
        }
        String sql = "SELECT * FROM " + tableName + " WHERE name = ? AND password = ?";
//        List<User> users = new ArrayList<>();
//        List<Admin> admins = new ArrayList<>();
        String url ;
        try (Connection con = DataSourceUtils.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);) {
            ps.setString(1, name);
            ps.setString(2,psw);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()){
                    String titleStr = rs.getString("id"); // 假设数据库中存储的是枚举名称的字符串表示
                    Admin.Title title = Admin.Title.valueOf(titleStr.toUpperCase());
                    User.Title title1 = User.Title.valueOf(titleStr.toUpperCase());
                    String sexStr = rs.getString("sex"); // 假设数据库中存储的是枚举名称的字符串表示
                    Admin.Sex sex = getSexFromString(sexStr); // 自定义方法转换
                    if (id.equals("ADMIN")){
                        Admin admin = new Admin(title,rs.getString("name"),rs.getString("password"),rs.getString("phone"),sex,rs.getInt("age"));
                        req.getSession().setAttribute("admin", admin);
                    }else{
                        User user = new User(title1,rs.getString("name"),rs.getString("password"),rs.getString("phone"),sex,rs.getInt("age"));
                        req.getSession().setAttribute("user", user);
                    }
                    url = "/nefu";
                }else{
                    url = "/nefu/login";
                }
            }
//            catch (SQLException e) {
//                throw new RuntimeException(e);
//            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        resp.sendRedirect(req.getContextPath()+url);
    }
}