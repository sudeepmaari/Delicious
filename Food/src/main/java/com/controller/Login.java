package com.controller;

import java.io.IOError;
import java.io.IOException;

import com.model.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet(name = "register", urlPatterns = {"/register"})
public class Login extends HttpServlet{
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOError, IOException {
        response.setContentType("text/html;charset=UTF-8");
//        type of the response sent to the client or browser
//        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        Registration reg = new Registration(session);
        try {
            if (request.getParameter("register") != null) {
                String name = request.getParameter("name");
                String phone = request.getParameter("phone");
                String email = request.getParameter("email");
                String pw = request.getParameter("pass");
                String cp = request.getParameter("confirm");

                if (pw.equals(cp)) {
                    String status = reg.Registration(name, phone, email, pw);                                        
                    if (status.equals("existed")) {

                        request.setAttribute("status", "Existed record");
                        RequestDispatcher rd1 = request.getRequestDispatcher("Register.jsp");
                        rd1.forward(request, response);

                    } else if (status.equals("success")) {
                        request.setAttribute("status", "Successfully Registered");
                        RequestDispatcher rd1 = request.getRequestDispatcher("Login.jsp");
                        rd1.forward(request, response);

                    } else if (status.equals("failure")) {
                        request.setAttribute("status", "Registration failed");
                        RequestDispatcher rd1 = request.getRequestDispatcher("Register.jsp");
                        rd1.forward(request, response);

                    }
                }
            }
        }catch(Exception e) {
        	e.printStackTrace();
        }
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
    }
  
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
   
    public String getServletInfo() {
        return "Short description";
    }
}
