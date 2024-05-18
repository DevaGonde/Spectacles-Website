package JavaClasses;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import singletoneClasses.GetConnectionObj;

public class DB {

	public static ResultSet getResultSetObj(String username, String pass) {
		ResultSet rs = null;
		try {
			
			Connection con = GetConnectionObj.getInstance();
			PreparedStatement st = con.prepareStatement("SELECT * FROM spectuser WHERE username=? AND pass=?;");
			st.setString(1, username);
			st.setString(2, pass);
			rs = st.executeQuery();
			System.out.println(" hit the db");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	public static ResultSet getResultSetForProducts() {
		ResultSet rs = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/testing_schema","root","deva@1221");
			PreparedStatement st = con.prepareStatement("SELECT * FROM spects;");
			rs = st.executeQuery();
			System.out.println(" hit the db from spects ");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}

	public static boolean verify(String username, String password) {
		boolean isVerified = false;
		try {
			System.out.println(username+"  "+password);
			Connection con = GetConnectionObj.getInstance();
			PreparedStatement st = con.prepareStatement("SELECT * FROM spectuser WHERE username=? AND pass=?;");
			st.setString(1, username);
			st.setString(2, password);
			ResultSet rs = st.executeQuery();
			isVerified = rs.next(); // If any row is returned, verification succeeds
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isVerified;
	}

	public static boolean addData(String username, String password, String email, String imgPath) {
		boolean isAdded = false;
		try {
			Connection con = GetConnectionObj.getInstance();
			if (username != null && password != null && email != null) {
				PreparedStatement statement = con
						.prepareStatement("INSERT INTO spectuser (email, username, pass, img_path) VALUES (?, ?, ?, ?);");
				statement.setString(1, email);
				statement.setString(2, username);
				statement.setString(3, password);
				statement.setString(4, imgPath);
				isAdded = statement.executeUpdate() > 0;
				if(isAdded)System.out.println(" records are added");else System.out.println(" records are not added ");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isAdded;
	}
	
	

	public static void main(String[] args) {
		// Example usage
		System.out.println(verify("deva", "123"));
	}
}
