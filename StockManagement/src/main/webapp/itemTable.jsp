<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Stock Management</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/itemTable.css">
</head>
<body>
    <div class="container">
        <h1>Stock Details</h1>
        <div class="table-container">
            <table class="table">
                <thead>
                    <tr>
                        <th>Item ID</th>
                        <th>Item Name</th>
                        <th>Item Code</th>
                        <th>Photo</th>
                        <th>Item Quantity</th>
                        <th>Item Price</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${itemList}">
                        <tr>
                       
                            <td>${item.itemNo}</td>
                            <td>${item.itemName}</td>
                            <td>${item.itemCode}</td>
                            <td> <img src="images/${item.itemPhoto}" alt="photo" width=100px;></td>
                            <td>${item.itemQuantity}</td>
                            <td>${item.itemPrice}</td>
                            <td class="actions">
                                <a href="itemUpdate.jsp?num=${item.itemNo}&name=${item.itemName}&code=${item.itemCode}&qty=${item.itemQuantity}&photo=${item.itemPhoto}&price=${item.itemPrice}" class="action-button">Edit</a>
                               
                                <button class="action-button delete" data-toggle="modal" data-target="#deleteModal${item.itemNo}">Delete</button>
                                <!-- Delete Modal -->
                                <div class="modal fade" id="deleteModal${item.itemNo}" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
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
                                                <form action="/StockManagement/itemsDeleteServlet" method="post">
                                                    <input type="hidden" name="itemNo" value="${item.itemNo}" />
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

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>
</body>
