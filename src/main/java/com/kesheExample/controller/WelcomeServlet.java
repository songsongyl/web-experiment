package com.kesheExample.controller;

import com.kesheExample.entity.News;
import com.kesheExample.entity.Notice;
import com.kesheExample.service.NewsService;
import com.kesheExample.service.NoticeService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/nefu")
public class WelcomeServlet extends HttpServlet {
    private NewsService newsService = new NewsService();
    private NoticeService noticeService = new NoticeService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<News> newsList = newsService.getAllNews();
        req.setAttribute("newsList", newsList);
        List<Notice> noticesList = noticeService.getAllNotice();
        req.setAttribute("noticesList",noticesList);
        req.getRequestDispatcher("/WEB-INF/keshe/nefu.jsp").forward(req,resp);
    }
}
