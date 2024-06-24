package com.example02.controller;

import com.example02.util.DatabaseUtils;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/listteachers")
public class ListTeachersServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       req.setAttribute("teachers",DatabaseUtils.listTeachers());
       req.getRequestDispatcher("/WEB-INF/experiment06/listteachers.jsp").forward(req,resp);
    }
}
