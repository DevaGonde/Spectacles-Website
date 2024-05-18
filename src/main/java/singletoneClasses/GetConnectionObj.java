/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package singletoneClasses;
import java.sql.*;
public class GetConnectionObj {
    
    private static Connection con;

    // Private constructor to prevent instantiation from outside
    private GetConnectionObj() {
    }
    public static Connection getInstance() {
        if (con == null) {
        	 String url = "jdbc:mysql://localhost:3306/jsp";
             String username = "root";
             String password = "deva@1221";
             try {
         		Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection(url, username, password);
			} catch (Exception e) {
				e.printStackTrace();
			}
        }
        return con;
    }
}
