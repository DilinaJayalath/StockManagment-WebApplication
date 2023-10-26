package customer;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import stock.manager.itemDBUtill;
import supplier.supplierDBUtill;


@WebServlet("/AddQServlet")
public class AddQServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
		int cus_id = Integer.parseInt(request.getParameter("cusId"));
		String itemQuantity = request.getParameter("qty");
		String itemCode = request.getParameter("itemcode");
		
		

		
		boolean res = customerDBUtill.addProduct(cus_id, itemCode, itemQuantity);
		

		
		if(res == true){
			request.getRequestDispatcher("cartTableServlet").forward(request, response);
		}else {
			 request.getRequestDispatcher("d.jsp").forward(request, response);
		}
		
		
		
		
	}

}
