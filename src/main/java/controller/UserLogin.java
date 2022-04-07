package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		User newUser = new User();
		newUser.setUsername(formUsername);
		newUser.setPassword(formPassword);
		
		//try {
				//if () {
					
				//}
				//else {
					
				//}
			//}
			//catch(Exception e) {
				//e.printStackTrace();
			//}
				
		response.sendRedirect("userHome.html");
		
	}

}
