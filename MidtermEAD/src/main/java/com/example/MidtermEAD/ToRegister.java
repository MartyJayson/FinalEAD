package com.example.MidtermEAD;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "toregister",value = "/toregister")
public class ToRegister extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String surname = request.getParameter("surname");
        String birthday = request.getParameter("birthday");
        String gender = request.getParameter("gender");
        String redirect = "/registration.jsp?error";
        Employee employee = EmployeeDao.getEmployees(username);
        if(employee==null){
            Employee newEmployee = new Employee(username, surname, password,birthday, gender);
                if(EmployeeDao.registerEmployee(newEmployee))
                redirect = "/registration.jsp?success";

        }
        response.sendRedirect(redirect);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
