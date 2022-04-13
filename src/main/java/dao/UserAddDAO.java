package dao;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.*;

import model.User;


public class UserAddDAO {
	public static boolean addUser(User user) {
		boolean status = false;
		Connection conn = null;
		PreparedStatement ps = null;
		
		String jdbcURL = "jdbc:mysql://localhost:3306/ShopDB";
		String dbUser = "root";
		String dbPassword = "root1234";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
			
			String sql = "INSERT INTO ShopDB.users (username, password, email, firstname, lastname, address, zip, country) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getEmail());
			ps.setString(4, user.getFirstName());
			ps.setString(5, user.getLastName());
			ps.setString(6, user.getAddress());
			ps.setString(7, user.getZip());
			ps.setString(8, user.getCountry());
			
			ps.executeUpdate();
			
	        conn.close();
	        ps.close();	       
			
			status = true;
		}
		
		catch (Exception e) {
			System.out.println(e);
		}
		
		return status;
	}
}
