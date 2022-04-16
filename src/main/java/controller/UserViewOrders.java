package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.List;
import dao.OrderDAO;
import model.Order;

/**
 * Servlet implementation class UserViewOrders
 */
@WebServlet("/UserViewOrders")
public class UserViewOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("username");
		
		List<Order> orderInfo = OrderDAO.viewOrderInfo(username);
		request.setAttribute("info", orderInfo);
		RequestDispatcher rd = request.getRequestDispatcher("userViewOrders.jsp");
		rd.forward(request, response);	
		}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
