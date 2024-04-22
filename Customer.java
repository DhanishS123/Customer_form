package CustomerInfoLogicClasses;

import java.sql.*;

public class Customer {
	private static final String URL = "jdbc:mysql://localhost:3306/sys";
	private static final String USER = "root";
	private static final String PASSWORD = "root";

	public boolean insertCustomer(String name, String address, String email, String mobile) {
		boolean status = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(URL, USER, PASSWORD);
			// here yourdb is database name, root is username and password
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from customer");
			String query = "insert into customer values('" + name + "'," + "'" + address + "','" + email + "'," + mobile + ")";
			// Insert into Databse Table
			int result = stmt.executeUpdate(query);

			if (result == 1) {
				status = true;
			}

		} catch (Exception e) {
			e.printStackTrace();;
		}
		return status;
	}

	public static ResultSet searchCustomer(String customerName) {
		ResultSet resultSet = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(URL, USER, PASSWORD);
			String query = "SELECT * FROM customer WHERE name=?";
			PreparedStatement statement = con.prepareStatement(query);
			statement.setString(1 , customerName);
			resultSet = statement.executeQuery();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return resultSet;
		}
	}
