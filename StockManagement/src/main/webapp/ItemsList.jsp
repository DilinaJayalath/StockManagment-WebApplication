<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

  <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
  
  
  
  
  
  
  

  

  
  
  
  
  
  
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Item List</title>
    <style>
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #d9d9d9;
        }
        .actions {
            display: flex;
            justify-content: center;
        }
        .action-button {
            margin: 5px;
            padding: 5px 10px;
            text-align: center;
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
        }
        .action-button.delete {
            background-color: #dc3545;
        }
    </style>
    
    
    
    
    
     <script>
        function confirmDelete(itemNo) {
            var result = alert("Item with ID " + itemNo + " has been successfully deleted.");
            if (result) {
                alert("Item with ID " + itemNo + " has been successfully deleted.");
                // You can also submit the form to your delete servlet here if needed.
            }
        }
        </script>
    
</head>
<body>
    <h1>Item List</h1>
    <table>
        <tr>
            <th>Item ID</th>
            <th>Item Name</th>
            <th>Item Code</th>
            <th>Item Quantity</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="item" items="${itemList}">
            <tr>
                <td>${item.itemNo}</td>
                <td>${item.itemName}</td>
                <td>${item.itemCode}</td>
                <td>${item.itemQuantity}</td>
                <td class="actions">
                    
                    

                    <c:url value ="itemTable.jsp" var="itemUpdate">
                    	<c:param name="num" value="${item.itemNo}"/>
                    	<c:param name="name" value="${item.itemName}"/>
                    	<c:param name="code" value="${item.itemCode}"/>
                    	<c:param name="qty" value="${item.itemQuantity}"/>
                    </c:url>
                    
                    
                    
                    <a href="${itemUpdate}"><button class="action-button">Edit</button> </a>
                    
                    <form action = "/StockManagement/deleteItemSvlet" method = "post">
                     <input type="hidden" name="itemNo" value="${item.itemNo}" />

                    <button  class="action-button delete" onclick="confirmDelete(${item.itemNo})">Delete</button>
                    
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
    
    
    
</body>
</html>
