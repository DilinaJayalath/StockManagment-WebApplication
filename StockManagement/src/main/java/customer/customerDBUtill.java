package customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import stock.manager.DBConnect;

public class customerDBUtill {
	
	static Connection con = null;
	static Statement stmt = null;
	static ResultSet re = null;
	
	static int UserIdSaved ;
	

	public static List<Customer> validate( String userName , String pswd )
	{
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		try {
			
			
			
			con = DBConnect.getCon();
			stmt = con.createStatement();
			
			String sql = "select * from customer where userName = '"+userName+"' and pswd = '"+pswd+"'";
			
			re = stmt.executeQuery(sql);
			
			
			if(re.next()) {
				
				int id = re.getInt(1);
				String name = re.getString(2);
				String email = re.getString(3);
				String phone = re.getString(4);
				String userU = re.getString(5);
				String passU = re.getString(6);
				
				Customer c = new Customer(id,name , email , phone , userU , passU);
				
				cus.add(c);
								
				
			}
			
		}

		catch(Exception e)
		{
			e.printStackTrace();
		}		
		

		
		return cus;
		
	}
	
	
	
	
	
	public static boolean reg( String name , String email ,String phone,  String uname , String pswd )
	{
		boolean isSuccess = false;
		
		
		
		
		//validation
		
		try {
			
			con = DBConnect.getCon();
			stmt = con.createStatement();
			
			String sql = "insert into customer values(0,'"+ name +"','"+email+"','"+phone+"', '"+uname+"','"+pswd+"')";

			
			int ret = stmt.executeUpdate(sql);
			
			if( ret > 0)
			{
				isSuccess = true;
			}
			
						
		}

		catch(Exception e)
		{
			e.printStackTrace();
		}		
		
		return isSuccess;
	}
	
	
	
}
