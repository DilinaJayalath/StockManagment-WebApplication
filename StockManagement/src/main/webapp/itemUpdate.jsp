<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Item</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        form {
            background: #fff;
            padding: 30px 50px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
        }
        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin: 10px 0;
            font-weight: bold;
        }
        input[type="number"],
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .btn-update {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
        }
        .btn-update:hover {
            background-color: #0056b3;
        }
        .btn-cancel {
            background-color: #dc3545;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
        }
        .btn-cancel:hover {
            background-color: #a32b38;
        }
    </style>
</head>
<body>
<%
    int no = Integer.parseInt(request.getParameter("num"));
    String name = request.getParameter("name");
    String code = request.getParameter("code");
    int qty = Integer.parseInt(request.getParameter("qty"));
%>

<form action="updateItemServlet" method="post">
    <h1>Edit Item</h1>
    <input type="number" name="itemId" value="<%= no%>" readonly>
    <label for="itemName">Item Name:</label>
    <input type="text" name="itemName" value="<%= name%>" required>
    <label for="itemCode">Item Code:</label>
    <input type="text" name="itemCode" value="<%= code%>" required>
    <label for="itemQuantity">Item Quantity:</label>
    <input type="number" name="itemQuantity" value="<%= qty%>" required>
    <button type="button" class="btn btn-cancel" data-toggle="modal" data-target="#cancelModal">Cancel</button>
    <button type="submit" class="btn btn-update" data-toggle="modal" data-target="#cancelModal">Update</button>
</form>

<!-- Cancel Modal -->
<div class="modal fade" id="cancelModal" tabindex="-1" role="dialog" aria-labelledby="cancelModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="cancelModalLabel">Confirm Cancel</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Are you sure you want to cancel the update?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
                <a href="itemTableBtn.jsp" class="btn btn-danger">Yes, Cancel</a>
            </div>
        </div>
    </div>
</div>




</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>
</html>