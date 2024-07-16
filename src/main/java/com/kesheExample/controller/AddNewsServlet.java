package com.kesheExample.controller;

import com.kesheExample.entity.News;
import com.kesheExample.service.NewsService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;

@WebServlet("/nefu/addnews")
public class AddNewsServlet extends HttpServlet {
    NewsService newsService = new NewsService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/keshe/addnews.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            req.setCharacterEncoding("UTF-8");
            String idStr = req.getParameter("newsId");
            String title = req.getParameter("title");
            String author = req.getParameter("author");
            String content = req.getParameter("content");
            String url = req.getParameter("url");
            LocalDateTime time = LocalDateTime.parse(req.getParameter("time"), DateTimeFormatter.ISO_LOCAL_DATE_TIME);
            if ( idStr ==null ||title == null || title.trim().isEmpty() || author == null || author.trim().isEmpty() ||
                    content == null || content.trim().isEmpty() || time == null ) {
                throw new IllegalArgumentException("所有字段都是必填项。");
            }
            int id = Integer.parseInt(idStr);
            News news = new News(id,title, content, author, time,url);
            newsService.addNews(news);
            resp.sendRedirect(req.getContextPath() + "/nefu/newsmanage");
        } catch (DateTimeParseException e) {
            // 日期时间格式错误处理
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "日期时间格式不正确。");
        } catch (IllegalArgumentException e) {
            // 参数验证错误处理
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, e.getMessage());
        }
    }
}
