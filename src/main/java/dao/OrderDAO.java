package dao;

import java.sql.*;
import java.util.List;
import java.util.ArrayList;

import model.Order;
import model.Product;
import model.CartItem;
import model.User;

public class OrderDAO {
		public static int createOrder(User user, List<CartItem> cart, double cartTotal) {
			Connection conn = null;
			PreparedStatement ps, ps2 = null;
			ResultSet rs = null;
			int id = 0;
			
			String jdbcURL = "jdbc:mysql://localhost:3306/ShopDB"; 
			String dbUser = "root"; 
			String dbPassword = "root1234"; 
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
				
				String sql = "INSERT INTO ShopDB.order_details (username, ordertotal) VALUES (?, ?)";
				ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
				ps.setString(1, user.getUsername());
				ps.setDouble(2, cartTotal); 
				ps.executeUpdate();
				
				rs = ps.getGeneratedKeys();
				int generatedKey = 0;
				if (rs.next()) {
					generatedKey = rs.getInt(1);
				}
				
				for (CartItem item : cart) {
				String sql2 = "INSERT INTO ShopDB.orders (orderid, product, size, quantity, price) VALUES (?, ?, ?, ?, ?)";
				ps2 = conn.prepareStatement(sql2);
				ps2.setInt(1, generatedKey);
				ps2.setString(2, item.getProduct().getProductName());
				ps2.setString(3, item.getProduct().getSize());
				ps2.setInt(4, item.getQuantity());
				ps2.setDouble(5, item.getProduct().getPrice());
				ps2.executeUpdate();
				}
				
				id = generatedKey;
				
				conn.close();
		        ps.close();	
		        
			}
			
			catch (Exception e) {
				System.out.println(e);
			}
			
			return id;
		}
		
		
		public static List<Order> viewOrderInfo(String username) {
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			List<Order> orderList = new ArrayList<Order>();
			
			String jdbcURL = "jdbc:mysql://localhost:3306/ShopDB";
			String dbUser = "root";
			String dbPassword = "root1234";
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
				
				
				String sql = "SELECT * FROM ShopDB.order_details WHERE username = ?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, username);
				
				rs = ps.executeQuery();
				while (rs.next()) {
					Order order = new Order();
					int id = rs.getInt("orderid");
					String un = rs.getString("username");
					double total = rs.getDouble("ordertotal");
					
					order.setOrderID(id);
					order.setUsername(un);
					order.setOrderTotal(total);
					
					orderList.add(order);
				}
				
		        conn.close();
		        ps.close();
		        rs.close();       
			}
			
			catch (Exception e) {
				System.out.println(e);
			}
			
			return orderList;
		}
		
		public static List<CartItem> viewOrderItems(int orderID){
			List<CartItem> items = new ArrayList<CartItem>();
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			String jdbcURL = "jdbc:mysql://localhost:3306/ShopDB";
			String dbUser = "root";
			String dbPassword = "root1234";
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
				
				
				String sql = "SELECT * FROM ShopDB.orders WHERE orderid = ?";
				ps = conn.prepareStatement(sql);
				ps.setInt(1, orderID);
				
				rs = ps.executeQuery();
				while(rs.next()) {
					CartItem item = new CartItem();
					Product product = new Product();
					
					String name = rs.getString("product");
					String size = rs.getString("size");
					int quantity = rs.getInt("quantity");
					double price = rs.getDouble("price");
					
					product.setProductName(name);
					product.setSize(size);
					item.setProduct(product);
					item.setQuantity(quantity);
					item.setPrice(price);

					items.add(item);
				}
				
				conn.close();
		        ps.close();
		        rs.close();       
			}
			
			catch (Exception e) {
				System.out.println(e);
			}
			
			return items;
		}
}
