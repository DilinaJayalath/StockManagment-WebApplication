package customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		String username = request.getParameter("uid");
		String pswd = request.getParameter("pass");

		try {

			List<Customer> cusDetails = customerDBUtill.validate(username, pswd);
			request.setAttribute("cusDetails", cusDetails);

			String saveUname = "";
			String type = "";

			for (Customer customer : cusDetails) {
				saveUname = customer.getUser_Name();
				type = customer.getType();
				
			}
			
			System.out.println(saveUname+type);

			if (cusDetails.isEmpty()) {

				RequestDispatcher dis = request.getRequestDispatcher("Customer_Login.jsp");
				dis.forward(request, response);
			} else {

				HttpSession session = request.getSession(true);
				session.setAttribute("saveUname", saveUname);
				session.setAttribute("userType", type);

				if("stManager".equals(type)) {
					RequestDispatcher dis = request.getRequestDispatcher("stockDetails.jsp");
					dis.forward(request, response);
				}
				else if("ptManager".equals(type)) {
					RequestDispatcher dis = request.getRequestDispatcher("supplierTableBtn.jsp");
					dis.forward(request, response);
				}
				else {
					
					RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
					dis.forward(request, response);
				}
					
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}


	}

}
