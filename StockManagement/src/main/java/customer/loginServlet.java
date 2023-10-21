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

			for (Customer customer : cusDetails) {
				saveUname = customer.getUser_Name();
			}

			if (cusDetails.isEmpty()) {

				RequestDispatcher dis = request.getRequestDispatcher("invalidLog.jsp");
				dis.forward(request, response);
			} else {

				HttpSession session = request.getSession(true);
				session.setAttribute("saveUname", saveUname);


					
				
				RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
				dis.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}


	}

}
