package stock.manager;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateItemServlet")
public class updateItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		int itemNo = Integer.parseInt(request.getParameter("itemId"));
		String itemName = request.getParameter("itemName");
		String itemCode = request.getParameter("itemCode");
		int itemQuantity = Integer.parseInt(request.getParameter("itemQuantity"));
		
		
		boolean res = itemDBUtill.updateItems(itemNo, itemName,itemCode,itemQuantity);
		
		
		if(res == true){
			request.getRequestDispatcher("itemTableBtn.jsp").forward(request, response);
		}else {
			 request.getRequestDispatcher("fileHave.jsp").forward(request, response);
		}
		

	}

}
