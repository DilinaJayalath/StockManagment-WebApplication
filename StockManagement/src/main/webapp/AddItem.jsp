<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
.task-form {
	max-width: 400px;
	margin: 0 auto;
	padding: 20px;
	background-color: #fff;
	border: 1px solid #ddd;
	border-radius: 4px;
	animation: slideIn 0.5s ease;
}

.form-group {
	margin-bottom: 15px;
}

label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

input[type="text"] {
	width: 100%;
	padding: 8px;
	border: 1px solid #ddd;
	border-radius: 4px;
}

.btn-edit {
	display: inline-block;
	padding: 8px 16px;
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 4px;
	font-size: 14px;
	font-weight: bold;
	text-align: center;
	text-decoration: none;
	cursor: pointer;
	transition: background-color 0.3s ease;
	animation: fadeIn 0.5s ease;
}

.btn-edit:hover {
	background-color: #0069d9;
}

@
keyframes slideIn {from { transform:translateY(-100%);
	
}

to {
	transform: translateY(0);
}

}
@
keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
body {
	background-color: #f5f5f5;
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 20px;
}

h1 {
	font-size: 24px;
	color: #333;
	text-align: center;
	margin-top: 20px;
	margin-bottom: 40px;
}
</style>

<meta charset="ISO-8859-1">
<title>Update Task Details</title>
</head>
<body>


	<h1>Update Task Details</h1>



	<form action="addnew" method="post" class="task-form">
		<!-- <div class="form-group">
    <label for="tid">Item Number</label>
    <input type="text" name="itemNo" id="tid"  readonly>
  </div> -->
		<div class="form-group">
			<label for="ename">Item Name</label> <input type="text" name="itemName" id="ename" required>
		</div>
		<div class="form-group">
			<label for="eid">Item Code</label> <input type="text" name="itemCode" id="eid" required>
		</div>
		<div class="form-group">
			<label for="task">Item Quantity</label> <input type="number"name="itemQuantity" id="task" required>
		</div>
		<div class="form-group">
			<input type="submit" name="submit" value="Add Items" class="btn-edit">
		</div>
	</form>







</body>
</html>