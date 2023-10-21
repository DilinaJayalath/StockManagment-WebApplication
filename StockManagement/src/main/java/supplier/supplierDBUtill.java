package supplier;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import stock.manager.DBConnect;
import stock.manager.Items;

public class supplierDBUtill {
	
	
	static Connection con = null;
	static Statement stmt = null;
	static ResultSet re = null;

	public static boolean addSupplier( String supplierName, String supplierEmail, String supplierPhone ,String supplierCategories) {
		
		boolean isSuccess = false;
		try {

			con = DBConnect.getCon();
			stmt = con.createStatement();

			String sql = "insert into supplier values(0, '" + supplierName + "' , '" + supplierEmail+ "' , '" + supplierPhone + "' , '"+ supplierCategories +"' )";

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

	
	
	
	
	
	
	public static List<supplier> returnAllData() {
		
		List<supplier> supplierList = new ArrayList<>();
		
		try {
			con = DBConnect.getCon();
			stmt = con.createStatement();
			
			String sql = "select * from supplier";
			
			re = stmt.executeQuery(sql);
			
			
			
			 while (re.next()) {
				 	
				 supplier supp = new supplier(re.getInt("supplierId") ,re.getString("supplierName") , re.getString("supplierEmail") ,re.getString("supplierPhone") ,re.getString("supplierCategories")  );
			       
				 supplierList.add(supp);
			    }

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return supplierList;

		
	}
	
	
	
	
	

	
	public static ArrayList<supplier> supplierValidate(String email) {
		
		ArrayList <supplier> itm = new ArrayList<>();
		
		try {
			con = DBConnect.getCon();
			stmt = con.createStatement();
			
			String sql = "select * from supplier where supplierEmail = '"+email+"'";
			
			re = stmt.executeQuery(sql);
			
			if(re.next()) {
				
				int spId = re.getInt(1);
				 String spName = re.getString(2);
				 String spEmail = re.getString(2);;
				 String spPhone = re.getString(2);;
				String spCategories = re.getString(2);;
				
				supplier it = new supplier(spId , spName , spEmail , spPhone , spCategories);
				
				itm.add(it);
								
			}
			
		} catch (SQLException e) {
		
			
			
			e.printStackTrace();
		}
		
		return itm;
		
	}
	

	
	
	
	

}
