package com.example02.controller;

import com.example02.util.DatabaseUtils;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Arrays;
import java.util.logging.Logger;

@WebServlet("/updateteacher")
public class UpdateTeacherServlet extends HttpServlet {
    private static final Logger logger = Logger.getLogger(UpdateTeacherServlet.class.getName());
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        var tid = req.getParameter("tid");
        var teacher = DatabaseUtils.getTeacher(Integer.parseInt(tid));
        req.setAttribute("teacher",teacher);
        req.setAttribute("titles",DatabaseUtils.listTitles());
        req.setAttribute("courses",DatabaseUtils.listCourses());
        req.getRequestDispatcher("/WEB-INF/experiment06/updateteacher.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        logger.info("姓名：" + req.getParameter("tn"));
        logger.info("职称ID：" + req.getParameter("titleid"));
        logger.info("课程ID：" + Arrays.toString(req.getParameterValues("courseids")));
        //字符串数组转成字符串
    }
}
