package com.example01.filter;

import com.example01.entity.User;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebFilter("/filter/*")
public class LoginFilter extends HttpFilter {
    private List<String> excludes = List.of("/filter/login");

    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
        for (String e : excludes) {
            if (e.equals(req.getServletPath())) {
                chain.doFilter(req, res);
//                在这里放过去了其他的逻辑判断也就不执行了
                return;
            }
        }
        User user = (User) req.getSession().getAttribute("user");
        if (user != null) {
            chain.doFilter(req, res);
        } else {
            res.sendRedirect(req.getContextPath() + "/filter/login");
        }
    }
}