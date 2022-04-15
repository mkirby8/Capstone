package dao;

import java.sql.*;
import java.util.List;
import java.util.ArrayList;

import model.Product;
import model.User;


public class AdminDAO {
	public static List<User> viewUsers() {
		List<User> userList = new ArrayList<User>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String jdbcURL = "jdbc:mysql://localhost:3306/ShopDB";
		String dbUser = "root";
		String dbPassword = "root1234";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
			
			String sql = "SELECT * FROM ShopDB.users";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery(sql);
			
			while (rs.next()) {
				User newUser = new User();

				String un = rs.getString("username");
				String pw = rs.getString("password");
				String email = rs.getString("email");
				String firstName = rs.getString("firstname");
				String lastName = rs.getString("lastname");
				String address = rs.getString("address");
				String zip = rs.getString("zip");
				String country = rs.getString("country");
				
				newUser.setUsername(un);
				newUser.setPassword(pw);
				newUser.setEmail(email);
				newUser.setFirstName(firstName);
				newUser.setLastName(lastName);
				newUser.setAddress(address);
				newUser.setZip(zip);
				newUser.setCountry(country);
				
				userList.add(newUser);
			}
			conn.close();
	        ps.close();	
	        rs.close();
		}
		catch (Exception e) {
			System.out.println(e);
		}
		return userList;
	}
	
	public static User viewInfo(String username) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		User user = new User();
		
		String jdbcURL = "jdbc:mysql://localhost:3306/ShopDB";
		String dbUser = "root";
		String dbPassword = "root1234";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
			
			String sql = "SELECT * FROM ShopDB.users WHERE username = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			
			rs = ps.executeQuery();
			if (rs.next()) {
				String un = rs.getString("username");
				String email = rs.getString("email");
				String firstName = rs.getString("firstname");
				String lastName = rs.getString("lastname");
				String address = rs.getString("address");
				String zip = rs.getString("zip");
				String country = rs.getString("country");
				
				user.setUsername(un);
				user.setEmail(email);
				user.setFirstName(firstName);
				user.setLastName(lastName);
				user.setAddress(address);
				user.setZip(zip);
				user.setCountry(country);
			}
			
	        conn.close();
	        ps.close();
	        rs.close();       
		}
		
		catch (Exception e) {
			System.out.println(e);
		}
		
		
		return user;
	}
	
	public static List<Product> viewProducts() {
		List<Product> productList = new ArrayList<Product>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String jdbcURL = "jdbc:mysql://localhost:3306/ShopDB";
		String dbUser = "root";
		String dbPassword = "root1234";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
			
			String sql = "SELECT * FROM ShopDB.products";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery(sql);
			
			while (rs.next()) {
				Product newProduct = new Product();

				String name = rs.getString("productname");
				String size = rs.getString("size");
				String category = rs.getString("category");
				String price = rs.getString("price");
				String description = rs.getString("description");
				int quantity = rs.getInt("quantity");
				String photo = rs.getString("photo");
				
				newProduct.setProductName(name);
				newProduct.setSize(size);
				newProduct.setCategory(category);
				newProduct.setPrice(price);
				newProduct.setDescription(description);
				newProduct.setQuantity(quantity);
				newProduct.setPhoto(photo);
				
				
				productList.add(newProduct);
			}
			conn.close();
	        ps.close();	
	        rs.close();
		}
		catch (Exception e) {
			System.out.println(e);
		}
		return productList;
	}
}
