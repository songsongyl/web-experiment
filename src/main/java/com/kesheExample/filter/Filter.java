package com.kesheExample.filter;

import com.example01.entity.User;
import com.kesheExample.entity.Admin;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebFilter("/nefu/*")
public class Filter extends HttpFilter {
    private List<String> excludes = List.of("/nefu/login","/nefu/register");
    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
//        for (String e : excludes) {
//            if (e.equals(req.getServletPath())) {
//                chain.doFilter(req, res);
//                return;
//            }
//        }
        if (excludes.stream().anyMatch(e -> e.equals(req.getRequestURI()))) {
            // 如果在排除列表中，则直接放行请求
            chain.doFilter(req, res);
            return;
        }
        HttpSession session = req.getSession(false); // 不创建新会话
        if (session != null) {
            User user = (User) session.getAttribute("user");
            Admin admin = (Admin) session.getAttribute("admin");
            if (user != null || admin != null) {
                // 用户或管理员已登录，放行请求
                chain.doFilter(req, res);
            } else {
                // 用户和管理员均未登录，重定向到登录页面
                res.sendRedirect(req.getContextPath() + "/nefu/login");
                return;
            }
        } else {
            // 没有会话，通常意味着用户未登录，但也可能意味着请求未通过会话管理（如API请求）
            // 根据您的应用逻辑，这里可能也需要重定向到登录页面或返回错误响应
            res.sendRedirect(req.getContextPath() + "/nefu/login");
            return;
        }
        chain.doFilter(req, res);
    }

    }

