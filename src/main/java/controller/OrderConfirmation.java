package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AdminDAO;
import dao.OrderDAO;
import model.User;
import java.util.List;
import model.CartItem;

/**
 * Servlet implementation class OrderConfirmation
 */
@WebServlet("/OrderConfirmation")
public class OrderConfirmation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("username");
		@SuppressWarnings("unchecked")
		List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
		
		double cartTotal = 0.0;
		for (CartItem item : cart) {
			cartTotal += (item.getProduct().getPrice() * item.getQuantity());
		}
		User userInfo = AdminDAO.viewInfo(username);
		int newOrder = OrderDAO.createOrder(userInfo, cart, cartTotal);
		
		if (newOrder != 0) {
			session.removeAttribute("cart");
			request.setAttribute("info", userInfo);
			request.setAttribute("orderid", newOrder);
			RequestDispatcher rd = request.getRequestDispatcher("confirmation.jsp");
			rd.forward(request, response);
		}
		else {
			String message = "Shopping cart encountered an error. Please try again.";
			request.setAttribute("message", message);
			RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
			rd.forward(request, response);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
