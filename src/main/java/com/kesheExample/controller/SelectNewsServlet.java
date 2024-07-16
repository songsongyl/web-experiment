package com.kesheExample.controller;

import com.kesheExample.service.NewsService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/nefu/selectnews")
public class SelectNewsServlet extends HttpServlet {
    NewsService newsService = new NewsService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("newsList",newsService.getAllNews());
        req.getRequestDispatcher("/WEB-INF/keshe/selectnews.jsp").forward(req,resp);
    }
}
