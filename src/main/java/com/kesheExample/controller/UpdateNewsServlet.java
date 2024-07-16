package com.kesheExample.controller;

import com.kesheExample.service.NewsService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import static com.mysql.cj.conf.PropertyKey.logger;

@WebServlet("/nefu/updatenews")
public class UpdateNewsServlet extends HttpServlet {
    NewsService newsService = new NewsService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("newsList",newsService.getAllNews());
        req.getRequestDispatcher("/WEB-INF/keshe/updatenews.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String newsID = req.getParameter("newsId");
            String updateField = req.getParameter("updateField");
            String updateValue = req.getParameter("updateValue");

            if (newsID == null || updateField == null || updateValue == null) {
                throw new IllegalArgumentException("所有字段都是必填项。");
            }
          int id = Integer.parseInt(newsID );
            // 尝试更新新闻
            newsService.updateNews( updateField, updateValue,id);
            resp.sendRedirect(req.getContextPath() + "/nefu/newsmanage"); // 更新成功后的重定向
        } catch (IllegalArgumentException e) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, e.getMessage());
        } catch (Exception e) {
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "更新新闻时发生错误。");
        }
    }
}
