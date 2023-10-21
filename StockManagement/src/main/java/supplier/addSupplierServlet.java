package supplier;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stock.manager.Items;
import stock.manager.itemDBUtill;


@WebServlet("/addSupplierServlet")
public class addSupplierServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		String spName = request.getParameter("spName");
		String spEmail = request.getParameter("spEmail");
		String spPhone = request.getParameter("spPhone");
		String spCategories = request.getParameter("spCategories");
		
		

			List<supplier> spDetails = supplierDBUtill.supplierValidate(spEmail);

			
			String emailSupplier = "";

			for (supplier supplier : spDetails) {
				emailSupplier = supplier.getSpEmail();
			}

			if (spDetails.isEmpty()) {

				boolean res = supplierDBUtill.addSupplier(spName, spEmail, spPhone, spCategories);

				if (res == true) {
					request.setAttribute("res", res);
					RequestDispatcher dis1 = request.getRequestDispatcher("supplierTableBtn.jsp");
					dis1.forward(request, response);

				} else {
					request.setAttribute("res", res);
					RequestDispatcher dis1 = request.getRequestDispatcher("afterReg.jsp");
					dis1.forward(request, response);

				}

			} else if (emailSupplier.equals(spEmail)) {
				RequestDispatcher dis1 = request.getRequestDispatcher("afterReg.jsp");
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
