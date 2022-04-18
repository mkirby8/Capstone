package dao;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;



public class UserLoginDAO {
	public static boolean checkLogin(String username, String password) {
		boolean found = false;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String jdbcURL = "jdbc:mysql://htiz97hf42xltwv3:sps64uspk6muhrrl@en1ehf30yom7txe7.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/io64wq7jxkqkvcbo";
		String dbUser = "htiz97hf42xltwv3";
		String dbPassword = "sps64uspk6muhrrl";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
			
			String sql = "SELECT * FROM io64wq7jxkqkvcbo.users WHERE username = ? AND password = ?";
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
