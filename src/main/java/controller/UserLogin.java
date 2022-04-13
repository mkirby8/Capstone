package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;
import javax.servlet.*;
//import java.sql.*;

import dao.UserAddDAO;
import dao.UserLoginDAO;
import model.User;

@WebServlet("/UserLogin" )
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String formUsername = request.getParameter("username");
        String formPassword = request.getParameter("password");
        System.out.println(formUsername);
        System.out.println(formPassword);
        
        //HttpSession session = request.getSession(false);
        //if(session != null) {
        //	session.setAttribute("username", username);
        //}
        
        if (UserLoginDAO.checkLogin(formUsername, formPassword) == true) {
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


