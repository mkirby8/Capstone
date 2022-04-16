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
import model.Order;

/**
 * Servlet implementation class AdminViewOrders
 */
@WebServlet("/AdminViewOrders")
public class AdminViewOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Order> allOrders = AdminDAO.viewOrders();
		
		request.setAttribute("orders", allOrders);
		RequestDispatcher rd = request.getRequestDispatcher("viewOrders.jsp");
		rd.forward(request, response);		}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
