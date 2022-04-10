package dao;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.*;

import model.User;


public class UserDAO {
	public User checkLogin(String username, String password) throws SQLException,
    ClassNotFoundException {
String jdbcURL = "jdbc:mysql://localhost:3306/ShopDB";
String dbUser = "root";
String dbPassword = "root1234";

Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
String sql = "SELECT * FROM users WHERE username = ? and password = ?";
PreparedStatement statement = connection.prepareStatement(sql);
statement.setString(1, username);
statement.setString(2, password);

ResultSet result = statement.executeQuery();

User user = null;

if (result.next()) {
    user = new User();
    user.setFirstName(result.getString("firstname"));
    user.setUsername(username);
}

connection.close();

return user;
}
}
