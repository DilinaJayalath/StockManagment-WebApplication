package customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
        request.setAttribute("cardDetails", ItemsList);
        request.getRequestDispatcher("itemCart.jsp").forward(request, response);
		
		
	}

}
