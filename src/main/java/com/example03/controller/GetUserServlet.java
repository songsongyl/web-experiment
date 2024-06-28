package com.example03.controller;

import com.example03.entity.User;
import com.example03.util.DataSourceUtils;
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
import java.time.LocalDateTime;

@WebServlet("/getuser")
public class GetUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = null;
        String sql = "select * from user where id =?";
        try(Connection con = DataSourceUtils.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ) {
            ps.setInt(1, Integer.parseInt(req.getParameter("uid")));
            try(ResultSet rs = ps.executeQuery()){
                while (rs.next()){
                    user = new User(rs.getInt("id"),rs.getString("name"),rs.getObject("insert_time", LocalDateTime.class),rs.getObject("update_time",LocalDateTime.class));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("user",user);
        req.getRequestDispatcher("/WEB-INF/experiment07/query.jsp").forward(req,resp);
    }
}
