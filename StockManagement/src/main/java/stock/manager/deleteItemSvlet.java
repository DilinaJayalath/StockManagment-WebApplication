package stock.manager;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteItemSvlet")
public class deleteItemSvlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		int itemNo = Integer.parseInt(request.getParameter("itemNo"));
		
		
		boolean res = itemDBUtill.deleteItem(itemNo);

		if (res == true) {
			request.getRequestDispatcher("Itemdetails.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("fileHave.jsp").forward(request, response);
		}

	}

}
