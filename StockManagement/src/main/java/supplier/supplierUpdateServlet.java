package supplier;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stock.manager.itemDBUtill;


@WebServlet("/supplierUpdateServlet")
public class supplierUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int spNo = Integer.parseInt(request.getParameter("spNo"));
		String spName = request.getParameter("spName");
		String spEmail = request.getParameter("spEmail");
		String spPhone = request.getParameter("spPhone");
		String spCategories = request.getParameter("spCategories");
		
		
		
		boolean res = supplierDBUtill.updateSupplier(spNo, spName,spEmail,spPhone,spCategories);
		

		
		if(res == true){
			request.getRequestDispatcher("supplierTableBtn.jsp").forward(request, response);
		}else {
			 request.getRequestDispatcher("fileHave.jsp").forward(request, response);
		}
		
		
		
	}

}
