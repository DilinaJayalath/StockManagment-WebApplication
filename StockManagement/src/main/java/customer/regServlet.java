package customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/regServlet")
public class regServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uname");
		String pswd = request.getParameter("pswd");
		
		
		try {
			boolean res = customerDBUtill.reg( name, email, phone, username, pswd);
			
			if (res == true) {
				request.setAttribute("res", res);
				RequestDispatcher dis1 =request.getRequestDispatcher("Customer_Login.jsp");
			    dis1.forward(request,response);
			    
			}
			else {
				request.setAttribute("res", res);
				RequestDispatcher dis1 =request.getRequestDispatcher("Customer_Login.jsp");
			    dis1.forward(request,response);
				
			}
		}
		
			catch(Exception e) {
				e.printStackTrace();
		}
		
			
		
		
		
		
	}

}
