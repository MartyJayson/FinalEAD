package com.example.MidtermEAD;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "home", value = "/home")
public class Home extends HttpServlet {
    public void init(){

        System.out.println("-init-");
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        System.out.println("-doGet-");
    }

    public void destroy() {

        System.out.println("-destroy-");
    }
}