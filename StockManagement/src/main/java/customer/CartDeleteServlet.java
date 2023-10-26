package customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import supplier.supplierDBUtill;


@WebServlet("/CartDeleteServlet")
public class CartDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int cus_id = Integer.parseInt(request.getParameter("cusId"));
		String itemCode = request.getParameter("itemcode");

		
		
		System.out.println(cus_id+itemCode);
		boolean res = customerDBUtill.deleteItem(cus_id,itemCode);
			
			
			if(res == true){
				request.getRequestDispatcher("cartTableServlet").forward(request, response);
			}else {
				 request.getRequestDispatcher("d.jsp").forward(request, response);
			}
			
		
	}

}
