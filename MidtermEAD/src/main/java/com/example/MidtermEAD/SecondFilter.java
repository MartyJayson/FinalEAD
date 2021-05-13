package com.example.MidtermEAD;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.Year;

@WebFilter(value = "/registration")
public class SecondFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        HttpServletRequest req = (HttpServletRequest) request;
        String birthday = request.getParameter("birthday");


            System.out.println(birthday);
            int year = Integer.parseInt(birthday.substring(0,4));
            int month = Integer.parseInt(birthday.substring(5,7));
            int day = Integer.parseInt(birthday.substring(8,10));
        if(year < 2007 && year > 1930 && month > 0 && month < 13 && day > 0 && month < 32){
            chain.doFilter(request, response);
        }
        else
            out.println("Invalid date! Please, fill your birthday again!");
    }
}
