package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDAO;
import model.Product;
import java.util.List;

/**
 * Servlet implementation class AdminViewProducts
 */
@WebServlet("/AdminViewProducts")
public class AdminViewProducts extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Product> allProducts = AdminDAO.viewProducts();
		
		request.setAttribute("products", allProducts);
		RequestDispatcher rd = request.getRequestDispatcher("viewProducts.jsp");
		rd.forward(request, response);	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
