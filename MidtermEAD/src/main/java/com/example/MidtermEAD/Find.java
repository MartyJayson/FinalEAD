package com.example.MidtermEAD;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;

@WebServlet("/find")
public class Find extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String search = request.getParameter("search");

        String redirect = "/index.jsp?vacancyError";
        Vacancy vacancy = VacancyDao.getVacancy(search);

        if(vacancy!=null){
                request.getSession().setAttribute("SEARCH", vacancy);
                redirect = "/vacancy.jsp";
            }
        response.sendRedirect(redirect);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

    }
}
