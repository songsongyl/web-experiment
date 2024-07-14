package com.kesheExample.controller;

import com.kesheExample.entity.Teacher;
import com.kesheExample.service.TeacherService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/nefu/teacherdetail")
public class TeacherDetail extends HttpServlet {
    private TeacherService teacherService;
    @Override
    public void init() throws ServletException {
        teacherService = new TeacherService();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int teacherId = Integer.parseInt(req.getParameter("id"));
        Teacher teacher = teacherService.getTeacherById(teacherId);
        if (teacher != null) {
            req.setAttribute("teacher", teacher);
            req.getRequestDispatcher("/WEB-INF/keshe/teacherdetail.jsp").forward(req, resp);
        } else {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND, "教师未找到");
        }
    }

}
