package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;
import javax.servlet.*;
//import java.sql.*;

import dao.UserLoginDAO;

@WebServlet("/UserLogin" )
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String formUsername = request.getParameter("username");
        String formPassword = request.getParameter("password");
        
        
        if (UserLoginDAO.checkLogin(formUsername, formPassword) == true) {
        	HttpSession session = request.getSession();
        	session.setAttribute("username", formUsername);
        	String message = "Welcome, " + formUsername;
        	request.setAttribute("message", message);
        	RequestDispatcher rd = request.getRequestDispatcher("userHome.jsp");
        	rd.forward(request, response);
        }
        else {
        	String message = "Invalid email/password";
            request.setAttribute("message", message);
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
            
        }
        
    }
		
	}


