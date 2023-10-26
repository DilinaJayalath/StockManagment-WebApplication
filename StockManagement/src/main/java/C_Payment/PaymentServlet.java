package C_Payment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.customerDBUtill;


@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String CHName = request.getParameter("CHName");
		String Address = request.getParameter("Address");
		String CardNo = request.getParameter("CardNo");
		String Pincode = request.getParameter("Pincode");
		String Amount = request.getParameter("Amount");

		
		
		try {
			boolean pay = PaymentDBUtil.addPayment( CHName, Address, CardNo, Pincode, Amount);
			
			if (pay == true) {
				request.setAttribute("pay", pay);
				RequestDispatcher dis1 =request.getRequestDispatcher("index.jsp");
			    dis1.forward(request,response);
			    
			}
			else {
				request.setAttribute("pay", pay);
				RequestDispatcher dis1 =request.getRequestDispatcher("index.jsp");
			    dis1.forward(request,response);
				
			}
		}
		
			catch(Exception e) {
				e.printStackTrace();
		}
	}

}
