package customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("un");
		String password = request.getParameter("passw");		
		
		try {
		List <Customer> cusDetails = customer_DB.validate(username, password);
		
		request.setAttribute("cusDetails", cusDetails);
		
		
		RequestDispatcher dis = request.getRequestDispatcher("user acc.jsp");
		dis.forward(request, response);
		}
		
		catch(Exception e){ 
			e.printStackTrace();
		}
		
	}

}
