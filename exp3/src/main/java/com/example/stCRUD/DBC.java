package com.example.stCRUD;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBC {
	private static String url = "jdbc:mysql://localhost:3306/studentdb";
	private static String username = "root";
	private static String password = "root123";
	public static Connection getConnection() {
		
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,username,password);
		}
		catch(ClassNotFoundException |SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
}
