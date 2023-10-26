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

<%@ include file="header.jsp" %>

<% 
    int cusId = (Integer) session.getAttribute("cusId");
	double sum = (Double) session.getAttribute("sum");
  
%>
       

    <div class="table-container">
        <table class="item-table">
            <thead>
                <tr>
                    <th>Item Name</th>
                    <th>Price</th>
                    <th>Item Quantity</th>
                  
                </tr>
            </thead>
            <tbody>
                        
                  <c:forEach var="item" items="${cardDetails}">

                <tr>
                    <td>${item.itemName}</td>
                    <td>${item.itemPrice}</td>
                    
             
                     
                     <form action ="/StockManagement/AddQServlet" method ="post"> 
                     
                     <input type ="hidden" name = "cusId" value="<%=cusId%>"> 
                     <input type ="hidden" name ="itemcode" value ="${item.itemCode}"> 
                     
                     <td> <input type="number" name = "qty" value ="${item.itemQuantity}"></td> 
                     
                     <td><input type = "submit" value = "Additem"></td>
                     
                     </form>
                      
                      
                      
                      
                                           
                     <form action ="/StockManagement/CartDeleteServlet" method ="post"> 
                     
                     <input type ="hidden" name = "cusId" value="<%=cusId%>"> 
                     <input type ="hidden" name ="itemcode" value ="${item.itemCode}"> 
            
                     <td><input type = "submit" value = "Delete"></td>
                     
                     </form>
               
                </tr>
            
 </c:forEach>               
                <td> Total </td>
                <td> <%=sum%> </td>
                <td></td>
                <td></td>
                <td><a href ="C_Payment.jsp"> <input type = "submit" value = "Buy Now!"> </a></td>

            </tbody>
        </table>
    </div>
</body>
</html>
