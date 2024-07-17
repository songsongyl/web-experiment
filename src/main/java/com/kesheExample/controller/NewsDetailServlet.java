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

@WebServlet("/nefu/newsdetail")
public class NewsDetailServlet extends HttpServlet {
    NewsService newsService = new NewsService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      String idStr = req.getParameter("id");
        if (idStr == null || idStr.isEmpty()) {
            // 处理错误情况，例如发送错误响应或跳转到错误页面
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid ID parameter");
            return;
        }

        try {
            int id = Integer.parseInt(idStr);
            News news = newsService.getNewsById(id);
            if (news == null) {
                // 如果没有找到新闻条目，发送错误响应
                resp.sendError(HttpServletResponse.SC_NOT_FOUND, "News item not found.");
                return;
            }
            req.setAttribute("news", news);
        } catch (NumberFormatException e) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid ID parameter: ID must be a valid integer.");
            return;
        }

        List<News> newsList = newsService.getAllNews();
        if (newsList == null) {
            // 处理新闻列表获取失败的情况
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Failed to retrieve news list.");
            return;
        }
        req.setAttribute("newsList", newsList);

        req.getRequestDispatcher("/WEB-INF/keshe/newsdetail.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String idParam = req.getParameter("id");
            if (idParam == null || idParam.trim().isEmpty()) {
                resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "新闻ID不能为空。");
                return;
            }
            int newsId = Integer.parseInt(idParam); // 处理转换异常
            // 根据 newsId 查询新闻
            News news = newsService.getNewsById(newsId);
            if (news == null) {
                resp.sendError(HttpServletResponse.SC_NOT_FOUND, "未找到指定的新闻。");
                return;
            }
            req.setAttribute("news", news);
            List<News> newsList = newsService.getAllNews();
            req.setAttribute("newsList", newsList);
            req.getRequestDispatcher("/WEB-INF/keshe/newsdetail.jsp").forward(req, resp);
//            resp.sendRedirect(req.getContextPath() + "/nefu/newsdetail");

        } catch (NumberFormatException e) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "无效的新闻ID格式。");
        }
    }
}
