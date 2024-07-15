package com.kesheExample.controller;

import com.kesheExample.entity.News;
import com.kesheExample.service.NewsService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/nefu/news")
public class NewsServlet extends HttpServlet {
    private NewsService newsService = new NewsService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<News> newsList = newsService.getAllNews();
        req.setAttribute("newsList", newsList);
        req.getRequestDispatcher("/WEB-INF/keshe/news.jsp").forward(req,resp);
    }
}
