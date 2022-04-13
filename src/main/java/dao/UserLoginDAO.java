package dao;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.*;



public class UserLoginDAO {
	public static boolean checkLogin(String username, String password) {
		boolean found = false;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String jdbcURL = "jdbc:mysql://localhost:3306/ShopDB";
		String dbUser = "root";
		String dbPassword = "root1234";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
			
			String sql = "SELECT * FROM ShopDB.users WHERE username = ? AND password = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			
			rs = ps.executeQuery();
			if (rs.next()) {
				found = true;
			}
			
	        conn.close();
	        ps.close();
	        rs.close();       
		}
		
		catch (Exception e) {
			System.out.println(e);
		}
		
		return found;

}
	
	
}
