package customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class customer_DB {

	public static List<Customer> validate(String userName, String password){
		
		ArrayList<Customer> cu = new ArrayList<>();	
		
		String url = "jdbc:mysql://localhost:3306/online_stock";
		String user = "root";
		String pw = "Sathu@2001";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pw);
		
			Statement st = con.createStatement(); 
			
			String sql = "select * from customer where User_name = '"+userName+"' and Passsword = '"+password+"'";
		
			ResultSet rs = st.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getNString(2);
				String email = rs.getNString(3);
				String phone = rs.getNString(4);
				String un = rs.getNString(5);
				String passw = rs.getNString(6);
				
				Customer c1 = new Customer(id,  name,  email, phone, un , passw);
				cu.add(c1);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}

		
		return cu;
	
	}
	

	
}
