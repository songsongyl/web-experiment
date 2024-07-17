package com.kesheExample.controller;

import com.kesheExample.service.NoticeService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/nefu/selectnotice")
public class SelectNoticeServlet extends HttpServlet {
    NoticeService noticeService = new NoticeService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("noticesList",noticeService.getAllNotice());
        req.getRequestDispatcher("/WEB-INF/keshe/selectnotice.jsp").forward(req,resp);
    }
}
