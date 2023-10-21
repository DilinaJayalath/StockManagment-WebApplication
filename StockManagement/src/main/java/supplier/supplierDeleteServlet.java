package supplier;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class supplierDeleteServlet1
 */
@WebServlet("/supplierDeleteServlet")
public class supplierDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = Integer.parseInt(request.getParameter("spNo"));

		boolean res = supplierDBUtill.deleteSupplier(no);
			
			
			if(res == true){
				request.getRequestDispatcher("supplierTableBtn.jsp").forward(request, response);
			}else {
				 request.getRequestDispatcher("fileHave.jsp").forward(request, response);
			}
			

	}

}
