package com.example04.Controller;

import com.example04.service.ServiceFactory;
import com.example04.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/get")
public class GetUserServlet1 extends HttpServlet {
    private final UserService userService = ServiceFactory.getUserSercice();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       int id = Integer.parseInt(req.getParameter("uid"));
        req.setAttribute("user",userService.getUser(id));
        req.getRequestDispatcher("/WEB-INF/experiment08/query.jsp").forward(req,resp);
    }
}
