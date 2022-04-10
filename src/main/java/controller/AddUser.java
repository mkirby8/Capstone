package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User; 

@WebServlet("/AddUser" )
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter input = response.getWriter();
		String formUsername = request.getParameter("username");
		String formPassword = request.getParameter("password");
		String formEmail = request.getParameter("email");
		
		if (formUsername != null && formPassword != null && formEmail != null) {
			try {
				User newUser = new User();
				newUser.setUsername(formUsername);
				newUser.setPassword(formPassword);
				newUser.setEmail(formEmail);
				
				//boolean isUserRegistered = Admin.DbDAO.addNewUser(newUser);
				
				
				//if(isUserRegistered == true){
					//input.print("You are registered");
					//input.print("<a href='login.jsp'>Go to login</a>");
				response.sendRedirect("registrationSuccessful.jsp");
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			finally {
				input.close();
			}
		}
		else {
			response.sendRedirect("signup.jsp");
		}
		
		
		
		
	}

}
