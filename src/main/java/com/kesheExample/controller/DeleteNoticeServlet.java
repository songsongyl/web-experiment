package com.kesheExample.controller;

import com.kesheExample.service.NoticeService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/nefu/deletenotice")
public class DeleteNoticeServlet extends HttpServlet {
    NoticeService noticeService = new NoticeService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("noticesList", noticeService.getAllNotice());
        req.getRequestDispatcher("/WEB-INF/keshe/deletenotice.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String idParam = req.getParameter("id");
            if (idParam == null || idParam.trim().isEmpty()) {
                throw new IllegalArgumentException("公告ID不能为空。");
            }
            int id = Integer.parseInt(idParam);
            noticeService.deleteNotice(id);
            resp.sendRedirect(req.getContextPath() + "/nefu/noticesmanage"); // 重定向到新闻列表页面
        } catch (IllegalArgumentException e) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, e.getMessage());
        } catch (Exception e) {
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "删除公告时发生错误");
        }
    }
}
