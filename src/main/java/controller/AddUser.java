package controller;

import java.io.IOException;

import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User; 
import dao.UserAddDAO;

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
		String formFirstName = request.getParameter("firstname");
		String formLastName = request.getParameter("lastname");
		String formAddress = request.getParameter("address");
		String formZip = request.getParameter("zip");
		String formCountry = request.getParameter("country");
		
		if (formUsername != null && formPassword != null && formEmail != null) {
			try {
				User newUser = new User();
				newUser.setUsername(formUsername);
				newUser.setPassword(formPassword);
				newUser.setEmail(formEmail);
				newUser.setFirstName(formFirstName);
				newUser.setLastName(formLastName);
				newUser.setAddress(formAddress);
				newUser.setZip(formZip);
				newUser.setCountry(formCountry);
				
				
				if(UserAddDAO.addUser(newUser) == true){
					response.sendRedirect("registrationSuccessful.jsp");
				}
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
