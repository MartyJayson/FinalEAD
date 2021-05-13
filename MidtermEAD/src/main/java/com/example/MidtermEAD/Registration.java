package com.example.MidtermEAD;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "registration", value = "/registration")
public class Registration extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/registration.jsp").forward(request,response);

        /*String fname = request.getParameter("username");
        String surname = request.getParameter("surname");
        String passwrd = request.getParameter("password");
        String passwrd2 = request.getParameter("password2");
        String birthday = request.getParameter("birthday");
        String gender = request.getParameter("gender");
        String h;
        if(gender.equals("male")) h = "Mr.";
        else h = "Ms.";

        request.getRequestDispatcher("profile.jsp").include(request, response);

        Cookie ck[]=request.getCookies();
        String result = "Hello, "+ h + surname + "!\n Full name:" + fname + ' ' + surname + "\n Birthday: " + birthday;

        if(ck!=null){
            String userName=ck[0].getValue();
            if(!userName.equals("")||userName!=null||!userName.equals("JSESSIONID")){
                PrintWriter out = response.getWriter();
                out.println("<p>" + result + "</p>");
                System.out.println("Your are in Profile!");
            }
        }
        System.out.println("Everything ok!");
        response.setContentType("text/html");
    */
    }
    @Override
    public void destroy() {
    }
}
