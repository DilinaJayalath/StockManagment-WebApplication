package stock.manager;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class itemsDeleteServlet1
 */
@WebServlet("/itemsDeleteServlet")
public class itemsDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int no = Integer.parseInt(request.getParameter("itemNo"));
		
		
boolean res = itemDBUtill.deleteItem(no);
		
		
		if(res == true){
			request.getRequestDispatcher("itemTableBtn.jsp").forward(request, response);
		}else {
			 request.getRequestDispatcher("fileHave.jsp").forward(request, response);
		}
		
	}

}
