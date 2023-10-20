<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Stock Management</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }
        .container {
            margin: 50px 50px;
        }
        h1 {
            font-size: 24px;
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }
        .table-container {
            max-width: 80%;
            margin: 0 auto;
        }
        .table {
            border-collapse: collapse;
            width: 100%;
            background-color: #fff;
        }
        .table th, .table td {
            text-align: center;
            vertical-align: middle;
        }
        .table th {
            background-color:  rgb(0, 81, 119);
            color: #fff;
        }
        .table tbody tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .table tbody tr:hover {
            background-color: #d9d9d9;
        }
        .action-buttons {
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
        .modal-content {
            border: none;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .modal-header {
            background-color: #007bff;
            color: #fff;
        }
    </style>
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
                        <th>Item Quantity</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${itemList}">
                        <tr>
                            <td>${item.itemNo}</td>
                            <td>${item.itemName}</td>
                            <td>${item.itemCode}</td>
                            <td>${item.itemQuantity}</td>
                            <td class="actions">
                                <a href="itemUpdate.jsp?num=${item.itemNo}&name=${item.itemName}&code=${item.itemCode}&qty=${item.itemQuantity}" class="action-button">Edit</a>
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
                                                <form action="/StockManagement/deleteItemSvlet" method="post">
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
