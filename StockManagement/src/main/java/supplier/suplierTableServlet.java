
package supplier;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/suplierTableServlet")
public class suplierTableServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<supplier> ItemsList = supplierDBUtill.returnAllData();

		request.setAttribute("itemList", ItemsList);
		request.getRequestDispatcher("supplierTable.jsp").forward(request, response);

	}

}
