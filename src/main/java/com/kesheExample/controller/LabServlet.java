package com.kesheExample.controller;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/nefu/lab")
public class LabServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String labId = req.getParameter("id");
        String url;

        switch (labId) {
            case "921":
                url = "/WEB-INF/keshe/921lab.jsp";
                break;
            case "923":
                url = "/WEB-INF/keshe/923lab.jsp";
                break;
            case "925":
                url = "/WEB-INF/keshe/925lab.jsp";
                break;
            default:
                resp.sendError(HttpServletResponse.SC_NOT_FOUND, "实验室未找到");
                return;
        }

        req.getRequestDispatcher(url).forward(req, resp);


    }
}
