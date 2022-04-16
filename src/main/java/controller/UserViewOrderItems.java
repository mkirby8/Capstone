package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.OrderDAO;
import model.CartItem;

/**
 * Servlet implementation class UserViewOrderItems
 */
@WebServlet("/UserViewOrderItems")
public class UserViewOrderItems extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int orderID = Integer.parseInt(request.getParameter("orderID"));
		
		List<CartItem> orderItems = OrderDAO.viewOrderItems(orderID);
	
		request.setAttribute("info", orderItems);
		RequestDispatcher rd = request.getRequestDispatcher("userViewOrderItems.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
