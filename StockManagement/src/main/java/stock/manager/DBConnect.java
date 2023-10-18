package stock.manager;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static String url = "jdbc:mysql://localhost:3306/stock";
	private static String user = "root";
	private static String paword = "8632020dd";
	private static Connection con;
		
	public static Connection getCon() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user , paword);
		}
		catch(Exception e) {
			System.out.println("Data base connection is not success");
		}
		return con;

	}

}
