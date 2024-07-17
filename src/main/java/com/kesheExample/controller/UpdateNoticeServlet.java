package com.kesheExample.controller;

import com.kesheExample.service.NoticeService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/nefu/updatenotice")
public class UpdateNoticeServlet extends HttpServlet {
    NoticeService noticeService = new NoticeService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("noticesList",noticeService.getAllNotice());
        req.getRequestDispatcher("/WEB-INF/keshe/updatenotice.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String noticeID = req.getParameter("noticeId");
            String updateField = req.getParameter("updateField");
            String updateValue = req.getParameter("updateValue");
            if (noticeID == null || updateField == null || updateValue == null) {
                throw new IllegalArgumentException("所有字段都是必填项。");
            }
            int id = Integer.parseInt(noticeID );
            noticeService.updateNotice( updateField, updateValue,id);
            resp.sendRedirect(req.getContextPath() + "/nefu/noticesmanage"); // 更新成功后的重定向
        } catch (IllegalArgumentException e) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, e.getMessage());
        } catch (Exception e) {
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "更新公告时发生错误。");
        }
    }
}
