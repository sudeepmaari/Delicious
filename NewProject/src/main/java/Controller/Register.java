package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import Model.Registration;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "register", urlPatterns = {"/register"})
public class Register extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // type of the response sent to the client or browser
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        Registration reg = new Registration(session);
        try {
            if (request.getParameter("signup") != null) {

                String name = request.getParameter("name");
                String phone = request.getParameter("phone");
                String email = request.getParameter("email");
                String pw = request.getParameter("pass");
                String cp = request.getParameter("confirm");

                if (pw.equals(cp)) {
                    String status = reg.Registration(name, phone, email, pw);
                    
                    if (status.equals("existed")) {
                        request.setAttribute("status", "Existed record");
                        RequestDispatcher rd1 = request.getRequestDispatcher("Registration.jsp");
                        rd1.forward(request, response);
                    } else if (status.equals("success")) {
                        request.setAttribute("status", "Successfully Registered");
                        RequestDispatcher rd1 = request.getRequestDispatcher("Login.jsp");
                        rd1.forward(request, response);
                    } else if (status.equals("failure")) {
                        request.setAttribute("status", "Registration failed");
                        RequestDispatcher rd1 = request.getRequestDispatcher("Registration.jsp");
                        rd1.forward(request, response);
                    }
                }
            } else if (request.getParameter("login") != null) {
                String email = request.getParameter("email");
                String pass = request.getParameter("pass");
                String status = reg.login(email, pass);
                if (status.equals("success")) {

                    RequestDispatcher rd1 = request.getRequestDispatcher("Dashboard.jsp");
                    rd1.forward(request, response);

                } else if (status.equals("failure")) {
                    request.setAttribute("status", "Login failed");
                    RequestDispatcher rd1 = request.getRequestDispatcher("Login.jsp");
                    rd1.forward(request, response);
                }
            } else if (request.getParameter("logout") != null) {
                session.invalidate();
                RequestDispatcher rd1 = request.getRequestDispatcher("Dashboard.jsp");
                rd1.forward(request, response);
            }
            else if(request.getParameter("forgotPass")!=null) {
            	String phone=request.getParameter("phone");
            	String email=request.getParameter("email");
            	String pass=request.getParameter("pw");
            	String confirmPass=request.getParameter("cp");
            	if(pass.equals(confirmPass)) {
            		String status=reg.getCustomer(phone,email);
            		if(status.equals("success")) {
            			status=reg.updatePassword(email,pass);
            			if(status.equals("success")) {
            				request.setAttribute("status", "Password changed successfully");
            				RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
            				rd.forward(request, response);
            			}
            			else {
            				request.setAttribute("status", "Password updation failed");
            				RequestDispatcher rd=request.getRequestDispatcher("Forgot.jsp");
            				rd.forward(request, response);
            			}
            		}else {
            			request.setAttribute("status", "No matching record");
        				RequestDispatcher rd=request.getRequestDispatcher("Forgot.jsp");
        				rd.forward(request, response);
            		}
            	}
            }
        
          }  catch (Exception e) {
                e.printStackTrace();
            }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    public String getServletInfo() {
        return "Short description";
    }

}
