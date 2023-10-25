package stock.manager;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/updateItemServlet")



@MultipartConfig(fileSizeThreshold = 1024 * 1024,    // 1MB
maxFileSize = 1024 * 1024 * 10,  // 10MB
maxRequestSize = 1024 * 1024 * 50)  // 50MB

public class updateItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		int itemNo = Integer.parseInt(request.getParameter("itemId"));
		String itemName = request.getParameter("itemName");
		String itemCode = request.getParameter("itemCode");
		int itemQuantity = Integer.parseInt(request.getParameter("itemQuantity"));
		String deimage = request.getParameter("hiddenField");
		String itemPrice = request.getParameter("itemPrice");
        
        

        String fileName;
        Part part = request.getPart("itemPhoto");
        if (part != null && part.getSize() > 0) {
        	fileName = extractFileName(part);
        	String savePath = "C:\\Users\\DELL\\OneDrive\\Documents\\GitHub\\StockManagment\\StockManagement\\src\\main\\webapp\\images" + File.separator + fileName;
        	File fileSaveDir = new File(savePath);
        
        	part.write(savePath + File.separator);
        
        
        	System.out.println("savePath: " + savePath);
        	System.out.println("fileName: " + fileName);
        	System.out.println("File saved successfully: " + fileSaveDir.exists());
        }
        else {
        	
        	fileName = deimage;
        }
		
		
		boolean res = itemDBUtill.updateItems(itemNo, itemName,itemCode,itemQuantity,fileName,itemPrice);
		
		
		
		
		if(res == true){
			request.getRequestDispatcher("itemTableBtn.jsp").forward(request, response);
		}else {
			 request.getRequestDispatcher("fileHave.jsp").forward(request, response);
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
