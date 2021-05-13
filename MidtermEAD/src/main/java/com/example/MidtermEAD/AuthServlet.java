package com.example.MidtermEAD;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;

@WebServlet("/auth")
public class AuthServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        String redirect = "/login?usernameError";
        Employee employee = EmployeeDao.getEmployees(username);

        if(employee!=null){
            redirect = "/login?passwordError";
            if(employee.getPasswrd().equals(password)) {
                request.getSession().setAttribute("CURRENT_USER", employee);
                redirect = "/";
            }
        }
        response.sendRedirect(redirect);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

    }
}
