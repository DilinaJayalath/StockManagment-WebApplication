package C_Payment;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import stock.manager.DBConnect;
import stock.manager.Items;

public class PaymentDBUtil {

	
	
	static Connection con = null;
	static Statement stmt = null;
	static ResultSet re = null;

	public static boolean addPayment( String CHName, String Address, String CardNo, String Pincode, String Amount) {
		
		boolean isSuccess = false;
		try {

			con = DBConnect.getCon();
			stmt = con.createStatement();

			String sql = "insert into payment values(0, '" +  CHName+ "' ,'"+Address+"', '" + CardNo+ "' , " + Pincode + ", " + Amount + ")";

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
	
	
}
