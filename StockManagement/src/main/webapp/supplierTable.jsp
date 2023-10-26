<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Supplier Management</title>
</head>
	
   <link rel="stylesheet" href="css/supplierTable.css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">


<body>
	
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <div class="dashboard">
        <div class="sidebar">
            <ul>
                <li><a href="#"><i class="fas fa-chart-bar"></i> Dashboard</a></li>
                <li><a href="#"><i class="fas fa-user-friends"></i> Suppliers</a></li>
                <li><a href="#"><i class="fas fa-box-open"></i> Products</a></li>
                <li><a href="logout"><i class="fa fa-sign-out" aria-hidden="true"></i> LogOut</a></li>
            </ul>
        </div>
        
<% 
String saveUname = (String) session.getAttribute("saveUname");
%>       
       
        <div class="main-content">
            
            <header>
                <div class="header-left">
                    <h1>Supplier Management</h1>
                    <p>Welcome, <%= saveUname %></p>
          
                </div>
                
                <div class="header-right">
                   <a href="addSupplier.jsp"> <button  class="add-button">Add Supplier</button></a>
                </div>
            
            </header>
           
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Contact</th>
                        <th>Categories</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                
                <tbody>
                    <c:forEach var="item" items="${itemList}">
                        <tr>
							<td>${item.spId}</td>
                            <td>${item.spName}</td>
                            <td>${item.spEmail}</td>
                            <td>${item.spPhone}</td>
                            <td>${item.spCategories}</td>
                            <td class="actions">
                                
                            <a href="supplierUpdate.jsp?&no=${item.spId}&name=${item.spName}&email=${item.spEmail}&phone=${item.spPhone}&categories=${item.spCategories}" class="action-button">Edit</a>
                                
                            <button class="action-button delete" data-toggle="modal" data-target="#deleteModal${item.spId}">Delete</button>
                       
                               <div class="modal fade" id="deleteModal${item.spId}" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                
                                                <h5 class="modal-title" id="deleteModalLabel">Confirm Deletion</h5>
                                                
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                                </button>
                                            
                                            </div>
                                            
                                            <div class="modal-body">
                                                Are you sure you want to delete this item?
                                            </div>
                                            
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                                
                                                <form action="/StockManagement/supplierDeleteServlet" method="post">
                                                    <input type="hidden" name="spNo" value="${item.spId}" />
                                                    <button type="submit" class="btn btn-danger">Delete</button>
                                                
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                
                                
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</body>
</html>