package com.example.MidtermEAD;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.PrintWriter;

@WebFilter(value = "/registration")
public class FirstFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        HttpServletRequest req = (HttpServletRequest) request;
        String passwrd = request.getParameter("password");
        if(passwrd.length()>6)
            chain.doFilter(request, response);
        else
            out.println("Invalid password! Length must be more than 6 characters!");

    }
}
