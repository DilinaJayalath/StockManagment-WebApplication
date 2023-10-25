package customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/cartServlet")
public class cartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		int cusId = Integer.parseInt(request.getParameter("cusId"));
		String itemCode = request.getParameter("itemCode");
		String itemName = request.getParameter("itemName");
		String itemPrice = request.getParameter("itemPrice");
		
		
		try {
			boolean res = customerDBUtill.addToCart( cusId, itemCode, itemName, itemPrice);
			
			if (res == true) {
				request.setAttribute("res", res);
				RequestDispatcher dis1 =request.getRequestDispatcher("/itemsListCus");
			    dis1.forward(request,response);
			    
			}
			else {
				request.setAttribute("res", res);
				RequestDispatcher dis1 =request.getRequestDispatcher("/itemsListCus");
			    dis1.forward(request,response);
				
			}
		}
		
			catch(Exception e) {
				e.printStackTrace();
		}

		
		
	}

}
