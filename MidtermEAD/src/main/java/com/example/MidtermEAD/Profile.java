package com.example.MidtermEAD;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "profile", value = "/profile")
public class Profile extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       Employee current = (Employee) request.getSession().getAttribute("CURRENT_USER");
       if(current!=null){
           request.getRequestDispatcher("/profile.jsp").forward(request,response);
       }
       else {
           response.sendRedirect("/login");
       }
    }
    @Override
    public void destroy() {
    }
}
