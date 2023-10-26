package customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import stock.manager.Items;

/**
 * Servlet implementation class cartTableServlet
 */
@WebServlet("/cartTableServlet")
public class cartTableServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int cusId = Integer.parseInt(request.getParameter("cusId"));


		List<Items> ItemsList = customerDBUtill.returnCartData(cusId);
		
		double sum=0;
		int qty=0;
		for (Items items : ItemsList) {
			
			sum += Double.parseDouble(items.getItemPrice());
			qty = items.getItemQuantity();
			
		}
		sum = sum * qty;
		HttpSession session = request.getSession(true);
		session.setAttribute("sum", sum);
        request.setAttribute("cardDetails", ItemsList);
        request.getRequestDispatcher("itemCart.jsp").forward(request, response);
		
		
	}

}
