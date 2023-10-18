




<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Item</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
          
            min-height: 100vh;
        }
        form {
            background: #fff;
            padding: 50px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        label {
            display: block;
            margin: 10px 0;
        }
        input[type="number"],
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
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
        <input type="number" name="itemId" value="<%= no%>" readonly >
        <label for="itemName">Item Name:</label>
        <input type="text" name="itemName" value="<%= name%>">
        <label for="itemCode">Item Code:</label>
        <input type="text" name="itemCode" value="<%= code%>">
        <label for="itemQuantity">Item Quantity:</label>
        <input type="number" name="itemQuantity" value="<%= qty%>">
        <input type="submit" value="Update">
    </form>
</body>
</html>
