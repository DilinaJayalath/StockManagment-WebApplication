package stock.manager;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet("/addItemServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024,    // 1MB
maxFileSize = 1024 * 1024 * 10,  // 10MB
maxRequestSize = 1024 * 1024 * 50)  // 50MB

public class addItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		

		// int itemNo = Integer.parseInt(request.getParameter("itemNo"));

		try {

			String itemName = request.getParameter("itemName");
			String itemCode = request.getParameter("itemCode");
			
			String itemPrice = request.getParameter("itemPrice");
			System.out.println(itemName+itemCode);
			int itemQuantity = Integer.parseInt(request.getParameter("itemQuantity"));
			
			Part part = request.getPart("itemPhoto");
			
			
	        String fileName = extractFileName(part);
        	String savePath = "C:\\Users\\DELL\\OneDrive\\Documents\\GitHub\\StockManagment\\StockManagement\\src\\main\\webapp\\images" + File.separator + fileName;
	        File fileSaveDir = new File(savePath);
	        
	        part.write(savePath + File.separator);
	        
	        System.out.println("savePath: " + savePath);
	        System.out.println("fileName: " + fileName);
	        System.out.println("File saved successfully: " + fileSaveDir.exists());
			
			if(itemName.isEmpty() || itemCode.isBlank() || itemQuantity == 0 ) {
				request.setAttribute("res", false);
				RequestDispatcher dis1 = request.getRequestDispatcher("afterReg.jsp");
				dis1.forward(request, response);
			}
			

			List<Items> itemDetails = itemDBUtill.itemvalidate(itemCode);

			String itmCD = null;

			for (Items items : itemDetails) {
				itmCD = items.getItemCode();
			}

			if (itemDetails.isEmpty()) {

				boolean res = itemDBUtill.addItem(itemName, itemCode, itemQuantity , fileName ,itemPrice);

				if (res == true) {
					request.setAttribute("res", res);
					RequestDispatcher dis1 = request.getRequestDispatcher("itemTableBtn.jsp");
					dis1.forward(request, response);

				} else {
					request.setAttribute("res", res);
					RequestDispatcher dis1 = request.getRequestDispatcher("afterReg.jsp");
					dis1.forward(request, response);

				}

			} else if (itmCD.equals(itemCode)) {
				HttpSession session = request.getSession(true);
				session.setAttribute("itemExists", "item");
				RequestDispatcher dis1 = request.getRequestDispatcher("addItem.jsp");
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

	private String extractFileName(Part part) {
    	String contentDisp = part.getHeader("content-disposition");
    	String[] items = contentDisp.split(";");
    	for(String s : items) {
    		if(s.trim().startsWith("filename")) {
    			return s.substring(s.indexOf("=") + 2, s.length() - 1);
    		}
    	}
    	return "";
    }
    

}
