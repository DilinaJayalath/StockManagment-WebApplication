package customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import stock.manager.DBConnect;
import stock.manager.Items;

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
				String type = re.getString(7);
				
				Customer c = new Customer(id,name , email , phone , userU , passU , type);
				
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
			
			String sql = "insert into customer values(0,'"+ name +"','"+email+"','"+phone+"', '"+uname+"','"+pswd+"','user')";

			
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
	
	
	
	
	public static boolean addToCart( int cusId,String itemCode,String itemName, String itemPrice){

		boolean isSuccess = false;
		
		try {
		con = DBConnect.getCon();
		stmt = con.createStatement();

		String sql = "insert into buy_products (itemCode, itemName, itemPrice, cus_id ,itemQuantity ) values ('"+itemCode+"', '"+itemName+"', '"+itemPrice+"', "+cusId+" , 1)" ;

		int ret = stmt.executeUpdate(sql);
		
		if (ret > 0) {
			isSuccess = true;
		}else {
			isSuccess = false;
		}
		
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		System.out.println(isSuccess);
		
	return isSuccess;
		
	}



	
	public static List<Items> returnCartData(int cusId) {
		
		List<Items> itemList = new ArrayList<>();
		
		try {
			con = DBConnect.getCon();
			stmt = con.createStatement();
			
			String sql = "select * from buy_products where cus_id = "+cusId+"  ";
			
			re = stmt.executeQuery(sql);
			
			
			 while (re.next()) {
			        Items item = new Items(re.getString("itemName") , re.getString("itemCode") ,re.getInt("itemQuantity") , re.getString("itemPrice")) ;

			       
			        itemList.add(item);
			    }

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return itemList;

		
	}
	
	
	
public static boolean addProduct(int cus_id,String itemCode , String itemQuantity) {
		
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getCon();
			stmt = con.createStatement();

			String sql1 = "update buy_products set itemQuantity = '"+itemQuantity+"' where itemCode='"+itemCode+"' and cus_id = '"+cus_id+"'";
			
			//String sql2 = "update items set itemQuantity = '"+itemQuantity+"' ";
			
			
 
			int ret1 = stmt.executeUpdate(sql1);
			
			if (ret1 > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return isSuccess;

						
	}
	




public static boolean deleteItem( int cusId, String itemCode ) {

	boolean isSuccess = false;
	
	try {
	con = DBConnect.getCon();
	stmt = con.createStatement();

	String sql = "DELETE FROM buy_products WHERE cus_id = "+cusId+" and itemCode = '"+itemCode+"'";

	int ret = stmt.executeUpdate(sql);
	
	if (ret > 0) {
		isSuccess = true;
	}else {
		isSuccess = false;
	}
	
	
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
return isSuccess;
	
}

	
	
	
	
	
	
}
