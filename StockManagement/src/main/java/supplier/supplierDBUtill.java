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
		
		
		
		boolean isSuccess = false; //assign false initially
		
		
		try {

			con = DBConnect.getCon();
			stmt = con.createStatement();

			String sql = "insert into supplier values(0, '" + supplierName + "' , '" + supplierEmail+ "' , '" + supplierPhone + "' , '"+ supplierCategories +"' )";

			int ret = stmt.executeUpdate(sql); //assign a return value 
			
			
			
			//checking if the query executes successfully
			if (ret > 0) {
				isSuccess = true; //assign true if success
			}

		
		}
		
		

		catch (Exception e) {
			e.printStackTrace(); //catching the error
		}
		
		return isSuccess;

	}

	
	
	
	
	
	//return all supplier data
	public static List<supplier> returnAllData() {
		
		
		List<supplier> supplierList = new ArrayList<>();
		
		
		try {
			
			con = DBConnect.getCon();
			stmt = con.createStatement();
			
			String sql = "select * from supplier";
			
			re = stmt.executeQuery(sql); //assign sql values
			
			
			
			//checking if re has a value
			 while (re.next()) {

				 
				 supplier supp = new SupplierDetails(re.getInt("supplierId") ,re.getString("supplierName") , re.getString("supplierEmail") ,re.getString("supplierPhone") ,re.getString("supplierCategories")  );
			       
				 supplierList.add(supp); //add data to the supplierList
			  
			 }

			 
			 
		} catch (SQLException e) {
			
			e.printStackTrace(); // catching the error
		
		}
		return supplierList; 

		
	}
	
	
	
	
	

	//check supplier validation
	public static ArrayList<supplier> supplierValidate(String email) {
		
		
		ArrayList <supplier> itm = new ArrayList<>(); //create an arraylist object from supplier class 
		
		try {
			
			con = DBConnect.getCon();
			stmt = con.createStatement();
			
			String sql = "select * from supplier where supplierEmail = '"+email+"'";
			
			re = stmt.executeQuery(sql); //assign sql value
			
			
			
			//checking if re has a value
			if(re.next()) {
				
				
				//assign values to variables from the table
				int spId = re.getInt(1);
				 String spName = re.getString(2);
				 String spEmail = re.getString(3);
				 String spPhone = re.getString(4);
				String spCategories = re.getString(5);
				
				
				supplier it = new SupplierDetails(spId , spName , spEmail , spPhone , spCategories);
				
				itm.add(it); //add object values to itm arrayList object
								
			}
			
			
			
		} catch (SQLException e) { //catch the error
		
			
			
			e.printStackTrace();
		}
		
		return itm;
		
	}
	
	
	
	
	
	
	//update Supplier
	public static boolean updateSupplier(int no ,String name, String email, String phone, String categories) {
		
		boolean isSuccess = false;
		
		try {
			
			
			con = DBConnect.getCon();
			stmt = con.createStatement();

			String sql = "update supplier set supplierName = '"+name+"' , supplierEmail = '"+email+"', supplierPhone = '"+phone+"', supplierCategories = '"+categories+"'  where supplierId = "+no+" ";
 
			
			int ret = stmt.executeUpdate(sql);
			
			
			if (ret > 0) {
				isSuccess = true;
		
			}else {
				isSuccess = false;
			}
			
		
			
		} catch (SQLException e) { //catch the error
			
			e.printStackTrace();
	
		}
		
		return isSuccess;

						
	}
	
	
	
	

	//delete supplier
	public static boolean deleteSupplier( int spNo ) {

		boolean isSuccess = false;
		
		try {
			
			
		con = DBConnect.getCon();
		stmt = con.createStatement();

		String sql = "DELETE FROM supplier WHERE supplierId = "+spNo+" ";

		
		
		int ret = stmt.executeUpdate(sql);
		
		if (ret > 0) {
			isSuccess = true;
		
		}else {
			isSuccess = false;
	
		}
		
		
	} catch (SQLException e) {
		
		e.printStackTrace();
	
	}
		
	return isSuccess;
		
	}
	

	
	
	
	

}
