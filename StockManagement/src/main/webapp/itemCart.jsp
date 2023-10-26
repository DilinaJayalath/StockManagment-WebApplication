<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Item Table</title>
     <link rel="stylesheet" href ="css/1.css" >
</head>

<body>


<% 
    int cusId = (Integer) session.getAttribute("cusId");
  
%>
       

    <div class="table-container">
        <table class="item-table">
            <thead>
                <tr>
                    <th>Item Name</th>
                    <th>Price</th>
                    <th>Stock Quantity</th>
                </tr>
            </thead>
            <tbody>
                  <c:forEach var="item" items="${cardDetails}">
                        
              <%--          
                           <p> ${item.itemNo}
                            ${item.itemName}
                            ${item.itemCode}
                            <img src ="images/${item.itemPhoto}" alt="photo" width=100px;>
                            ${item.itemQuantity}
                            ${item.itemPrice}</p>
                          --%>



            
                <tr>
                    <td>${item.itemCode}</td>
                    <td>${item.itemName}</td>
                    <td>${item.itemPrice}</td>
             
                     
                     <form action ="/StockManagement/AddQServlet" method ="post"> <input type ="hidden" name = "cusId" value="<%=cusId%>"> 
                     
                     <input type ="hidden" name ="itemcode" value ="${item.itemCode}"> 
                     <td> <input type="text" name = "qty" value ="${item.itemQuantity}"></td> 
                     
                     <td><input type = "submit" value = "Additem"></td>
                     
                     </form>
                      
                      
                    
                    <td><input type = "submit" value = "Delete"></td>
                </tr>
            
 </c:forEach>               
                
            </tbody>
        </table>
    </div>
</body>
</html>
