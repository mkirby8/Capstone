package dao;

import java.sql.DriverManager;
import java.sql.PreparedStatement;

import java.sql.*;

import model.User;


public class UserAddDAO {
	public static boolean addUser(User user) {
		boolean status = false;
		Connection conn = null;
		PreparedStatement ps = null; 
		
		String jdbcURL = "jdbc:mysql://htiz97hf42xltwv3:sps64uspk6muhrrl@en1ehf30yom7txe7.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/io64wq7jxkqkvcbo";
		String dbUser = "htiz97hf42xltwv3";
		String dbPassword = "sps64uspk6muhrrl"; 
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
			
			String sql = "INSERT INTO io64wq7jxkqkvcbo.users (username, password, email, firstname, lastname, address, zip, country) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
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
