package com.kesheExample.controller;

import com.kesheExample.entity.News;
import com.kesheExample.entity.Notice;
import com.kesheExample.service.NoticeService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Date;

@WebServlet("/nefu/addnotice")
public class AddNoticeServlet extends HttpServlet {
    NoticeService noticeService = new NoticeService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/keshe/addnotice.jsp").forward(req,resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            req.setCharacterEncoding("UTF-8");
            String idStr = req.getParameter("noticeId");
            String title = req.getParameter("title");
            String content = req.getParameter("content");
            Date time = Date.valueOf(req.getParameter("time"));
            if (idStr == null || title == null || title.trim().isEmpty()||
                    content == null || content.trim().isEmpty() || time == null) {
                throw new IllegalArgumentException("所有字段都是必填项。");
            }
            int id = Integer.parseInt(idStr);
            Notice notice = new Notice(id,title,time,content);
            noticeService.addNotice(notice);
            resp.sendRedirect(req.getContextPath() + "/nefu/noticesmanage");
        } catch (IllegalArgumentException e) {
            // 参数验证错误处理
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, e.getMessage());
        }
    }
}
