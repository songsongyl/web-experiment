package com.kesheExample.controller;

import com.kesheExample.service.NewsService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/nefu/deletenews")
public class DeleteNewsServlet extends HttpServlet {
    NewsService newsService = new NewsService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("newsList", newsService.getAllNews());
        req.getRequestDispatcher("/WEB-INF/keshe/deletenews.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String idParam = req.getParameter("id");
            if (idParam == null || idParam.trim().isEmpty()) {
                throw new IllegalArgumentException("新闻ID不能为空。");
            }
            int id = Integer.parseInt(idParam);
            newsService.deleteNews(id);
            resp.sendRedirect(req.getContextPath() + "/nefu/newsmanage"); // 重定向到新闻列表页面
        } catch (IllegalArgumentException e) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, e.getMessage());
        } catch (Exception e) {
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "删除新闻时发生错误");
        }
    }
}



