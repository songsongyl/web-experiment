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
import java.util.List;

@WebServlet("/nefu/noticedetail")
public class NoticeDetailServlet extends HttpServlet {
    NoticeService noticeService = new NoticeService();
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
            Notice notice = noticeService.getNoticeById(id);
            if (notice == null) {
                resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Notice item not found.");
                return;
            }
            req.setAttribute("notice", notice);
        } catch (NumberFormatException e) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid ID parameter: ID must be a valid integer.");
            return;
        }

        List<Notice> noticesList = noticeService.getAllNotice();
        if (noticesList == null) {

            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Failed to retrieve notice list.");
            return;
        }
        req.setAttribute("noticesList", noticesList);
        req.getRequestDispatcher("/WEB-INF/keshe/noticedetail.jsp").forward(req, resp);
    }
}
