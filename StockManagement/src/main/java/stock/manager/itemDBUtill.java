package stock.manager;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class itemDBUtill {

	static Connection con = null;
	static Statement stmt = null;
	static ResultSet re = null;

	public static boolean addItem( String itemName, String itemCode, int itemQuantity , String fileName , String itemPrice) {
		
		boolean isSuccess = false;
		try {

			con = DBConnect.getCon();
			stmt = con.createStatement();

			String sql = "insert into items values(0, '" + itemName + "' , '" + itemCode+ "' , " + itemQuantity + " , '"+fileName+"' , "+itemPrice+")";

			int ret = stmt.executeUpdate(sql);

			if (ret > 0) {
				isSuccess = true;
			}

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;

	}
	
	
	
	
	
	public static List<Items> itemvalidate(String itemCd) {
		
		ArrayList<Items> itm = new ArrayList<>();
		
		try {
			con = DBConnect.getCon();
			stmt = con.createStatement();
			
			String sql = "select * from items where itemCode = '"+itemCd+"'";
			
			re = stmt.executeQuery(sql);
			
			if(re.next()) {
				
				int itemNo = re.getInt(1);
				String itemName = re.getString(2);
				String itemCode = re.getString(3);
				int itemQuantity = re.getInt(4);
				String itemPhoto = re.getString(5);
				String itemPrice = re.getString(6);
				
					
				Items it = new Items(itemNo , itemName , itemCode , itemQuantity , itemPhoto,  itemPrice);
				
				itm.add(it);
								
			}
			
		} catch (SQLException e) {
		
			
			
			e.printStackTrace();
		}
		
		return itm;
		
	}
	
	
	
	public static List<Items> returnAllData() {
		
		List<Items> itemList = new ArrayList<>();
		
		try {
			con = DBConnect.getCon();
			stmt = con.createStatement();
			
			String sql = "select * from items ";
			
			re = stmt.executeQuery(sql);
			
			
			 while (re.next()) {
			        Items item = new Items( re.getInt("itemNo") , re.getString("itemName") , re.getString("itemCode"), re.getInt("itemQuantity"),re.getString("itemPhoto"),re.getString("itemPrice"));
			        
			       
			        itemList.add(item);
			    }

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return itemList;

		
	}
	
	
	public static boolean updateItems(int itmno , String itemName, String itemCode, int itemQuantity ,String itemPhoto, String itemPrice ) {
		
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getCon();
			stmt = con.createStatement();

			String sql = "update items set itemName = '"+itemName+"' , itemCode = '"+itemCode+"', itemQuantity = '"+itemQuantity+"' , itemPhoto='"+itemPhoto+"'  , itemPrice = '"+itemPrice+"' where itemNo = "+itmno+" ";
 
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
	
	
	
	
	public static boolean deleteItem( int itemNo ) {

		boolean isSuccess = false;
		
		try {
		con = DBConnect.getCon();
		stmt = con.createStatement();

		String sql = "DELETE FROM items WHERE itemNo = '"+itemNo+"' ";

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
