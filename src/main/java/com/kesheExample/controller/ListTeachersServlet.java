package com.kesheExample.controller;


import com.kesheExample.entity.Teacher;
import com.kesheExample.service.TeacherService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/nefu/listteachers")
public class ListTeachersServlet extends HttpServlet {
    private TeacherService teacherService;
    @Override
    public void init() throws ServletException {
        teacherService = new TeacherService();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Teacher> teacherList;
        String titleParam = req.getParameter("title");
        if (titleParam != null) {
            Teacher.Title title = Teacher.Title.valueOf(titleParam.toUpperCase());
            teacherList = teacherService.getTeachersByTitle(title);
        } else {
            teacherList = teacherService.getAllTeachers();
        }
        req.setAttribute("teachers", teacherList);
        req.getRequestDispatcher("/WEB-INF/keshe/listteachers.jsp").forward(req,resp);
    }

}
