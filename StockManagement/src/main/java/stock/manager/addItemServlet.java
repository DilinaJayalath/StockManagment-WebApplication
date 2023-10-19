package stock.manager;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addItemServlet")
public class addItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// int itemNo = Integer.parseInt(request.getParameter("itemNo"));

		try {

			String itemName = request.getParameter("itemName");
			String itemCode = request.getParameter("itemCode");
			int itemQuantity = Integer.parseInt(request.getParameter("itemQuantity"));
			
			if(itemName.isEmpty() || itemCode.isBlank() || itemQuantity == 0 ) {
				request.setAttribute("res", false);
				RequestDispatcher dis1 = request.getRequestDispatcher("afterReg.jsp");
				dis1.forward(request, response);
			}
			

			List<Items> itemDetails = itemDBUtill.itemvalidate(itemCode);

			String itmCD = null;

			for (Items items : itemDetails) {
				itmCD = items.getItemCode();
			}

			if (itemDetails.isEmpty()) {

				boolean res = itemDBUtill.addItem(itemName, itemCode, itemQuantity);

				if (res == true) {
					request.setAttribute("res", res);
					RequestDispatcher dis1 = request.getRequestDispatcher("Itemdetails.jsp");
					dis1.forward(request, response);

				} else {
					request.setAttribute("res", res);
					RequestDispatcher dis1 = request.getRequestDispatcher("afterReg.jsp");
					dis1.forward(request, response);

				}

			} else if (itmCD.equals(itemCode)) {
				RequestDispatcher dis1 = request.getRequestDispatcher("fileHave.jsp");
				dis1.forward(request, response);

//                response.setContentType("application/json");
//                response.setCharacterEncoding("UTF-8");
//                PrintWriter out = response.getWriter();
//                out.print("{\"message\": \"itemExists\"}");
//                out.flush();
//				
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}

	}

}
