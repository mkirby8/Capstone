package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import model.Product;
import model.CartItem;
import java.util.List;
import java.util.ArrayList;
import javax.servlet.http.*;

/**
 * Servlet implementation class AddToCart
 */
@WebServlet("/AddToCart")
public class AddToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String size = request.getParameter("size");
		int quantity = Integer.parseInt(request.getParameter("num"));
		String name = request.getParameter("productName");
		List<CartItem> cart = new ArrayList<CartItem>();

		
		HttpSession session = request.getSession();
		if(session.getAttribute("username") == null){
				response.sendRedirect("cart.jsp");
		}
		
		else {
			Product product = new Product();
			product = ProductDAO.findProduct(name, size);
			CartItem newItem = new CartItem();
			newItem.setProduct(product);
			newItem.setQuantity(quantity);
			if (session.getAttribute("cart") == null) {
				cart.add(newItem);
				session.setAttribute("cart", cart);
			}
			else {
				cart = (List<CartItem>) session.getAttribute("cart");
				cart.add(newItem);
				session.setAttribute("cart", cart);
			}
			
			request.setAttribute("cart", cart);
			RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
			rd.forward(request, response);
		}
		
		
	}

}
