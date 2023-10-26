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
	
		int no = Integer.parseInt(request.getParameter("spNo"));

		boolean res = supplierDBUtill.deleteSupplier(no);
			
			
			if(res == true){
				request.getRequestDispatcher("supplierTableBtn.jsp").forward(request, response);
			}else {
				 request.getRequestDispatcher("fileHave.jsp").forward(request, response);
			}
			
		
	}

}
