<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Item</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f5f5f5;
}

form {
	background: #fff;
	padding: 30px 40px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);

}

.dashboard {
	display: flex;
	background-color: #fff;
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

input[type="number"], input[type="text"] {
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

.sidebar {
	width: 150px;
	background-color: #2c3e50;
	color: #fff;
	padding: 60px 20px;
}

.sidebar h1 {
	font-size: 50px;
	margin-bottom: 20px;
	text-align: center;
}

.sidebar ul {
	list-style: none;
	padding: 0;
}

.sidebar ul li {
	margin-bottom: 120px;
}

.sidebar ul li a {
	text-decoration: none;
	color: #fff;
	font-size: 18px;
}
</style>
</head>
<body>
	<%
	 int no = Integer.parseInt(request.getParameter("no"));
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String categories = request.getParameter("categories");
	%>

	<div class="dashboard">

		<div class="sidebar">
			<ul>
				<li><a href="#"><i class="fas fa-chart-bar"></i> Dashboard</a></li>
				<li><a href="#"><i class="fas fa-user-friends"></i>Suppliers</a></li>
				<li><a href="#"><i class="fas fa-box-open"></i> Products</a></li>
				<li><a href="#"><i class="fas fa-chart-line"></i> Reports</a></li>
			</ul>
		</div>

		<div class="main-content">

			<form action="/StockManagement/supplierUpdateServlet" method="post">


					<label for="itemName">Supplier ID:</label> 
					<input type="text"name="spNo" value="<%=no%>" readonly> 
					<label for="itemName">Supplier Name:</label> 
					<input type="text"name="spName" value="<%=name%>" required> 
					<label for="itemCode">Supplier Email:</label> 
					<input type="text"name="spEmail" value="<%=email%>" required> 
					<labelfor="itemQuantity">Supplier Phone:</label> 
					<input type="number" name="spPhone" value="<%=phone%>" required> 
					<label for="itemQuantity">Supplier categories:</label> 
					<input type="text" name=spCategories value="<%=categories%>" required>


				<button type="button" class="btn btn-cancel" data-toggle="modal"
					data-target="#cancelModal">Cancel</button>
				<button type="submit" class="btn btn-update" data-toggle="modal"
					data-target="#cancelModal">Update</button>
			</form>

			<!-- Cancel Modal -->
			<div class="modal fade" id="cancelModal" tabindex="-1" role="dialog"
				aria-labelledby="cancelModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="cancelModalLabel">Confirm Cancel</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">Are you sure you want to cancel the
							update?</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">No</button>
							<a href="supplierTableBtn.jsp" class="btn btn-danger">Yes,
								Cancel</a>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>
</html>
