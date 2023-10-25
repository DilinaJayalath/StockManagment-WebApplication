<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Item Table</title>
    <link rel="stylesheet" href="item_table.css">
</head>

<body>



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
                    <td>${item.itemQuantity}</td>
                </tr>
            
 </c:forEach>               
                
            </tbody>
        </table>
    </div>
</body>
</html>
