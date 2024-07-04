package com.kesheExample.filter;

import com.example01.entity.User;
import com.kesheExample.entity.Admin;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebFilter("/nefu/*")
public class Filter extends HttpFilter {
    private List<String> excludes = List.of("/nefu/login","/nefu/register");
    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
        for (String e : excludes) {
            if (e.equals(req.getServletPath())) {
                chain.doFilter(req, res);
                return;
            }
        }
        User user = (User) req.getSession().getAttribute("user");
        Admin admin = (Admin) req.getSession().getAttribute("admin");
        if (user != null || admin != null) {
            chain.doFilter(req, res);
        } else {
            res.sendRedirect(req.getContextPath() + "/nefu/login");
        }
    }
}
