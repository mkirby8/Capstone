package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import model.Product;
import model.CartItem;
import javax.servlet.http.*;

/**
 * Servlet implementation class AddToCart
 */
@WebServlet("/AddToCart")
public class AddToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String size = request.getParameter("size");
		int quantity = Integer.parseInt(request.getParameter("num"));
		String name = request.getParameter("productName");
		
		HttpSession session = request.getSession();
		if(session.getAttribute("username") == null){
				response.sendRedirect("cart.jsp");
		}
		
		else {
			Product product = new Product();
			product = ProductDAO.findProduct(name, size);
			CartItem newItem = new CartItem(product, quantity);
		}
		
		
	}

}
