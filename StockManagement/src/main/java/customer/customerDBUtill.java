package customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;

public class customerDBUtill {
	
	static Connection con = null;
	static Statement stmt = null;
	static ResultSet re = null;
	
	static int UserIdSaved ;
	

	
	public static boolean reg( String name , String email ,String phone,  String uname , String pswd )
	{
		boolean isSuccess = false;
		
		
		
		
		//validation
		
		try {
			
			con = DBConnect.getCon();
			stmt = con.createStatement();
			
			String sql = "insert into online_stock.customer values(0,'"+ name +"','"+email+"','"+phone+"', '"+uname+"','"+pswd+"')";

			
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
