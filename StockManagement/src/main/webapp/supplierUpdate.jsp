<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		
		<title>Edit Supplier</title> 
		
		<link rel="stylesheet" href="css/supplierUpdate.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">


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
				<li><a href="supplierTableBtn.jsp"><i class="fas fa-chart-bar"></i> Dashboard</a></li>
				<li><a href="#"><i class="fas fa-user-friends"></i>Suppliers</a></li>
				<li><a href="#"><i class="fas fa-box-open"></i> Products</a></li>
				<li><a href="#"><i class="fas fa-chart-line"></i> Reports</a></li>
			</ul>
		</div>

		<div class="main-content">
		
		
		
		<!-- Creating details form -->
			<form action="/StockManagement/supplierUpdateServlet" method="post" onsubmit="return validateForm()">



					<label for="itemName">Supplier ID:</label> 
					<input type="text"name="spNo" value="<%=no%>" readonly> 
					
					<label for="itemName">Supplier Name:</label> 
					<input type="text"name="spName" value="<%=name%>" required> 
					
					<label for="itemCode">Supplier Email:</label> 
					<input type="text"name="spEmail" id="email" value="<%=email%>" required> 
					<span id="emailError" style="color: red;"></span><br><br>
					        
					<label for="itemQuantity">Supplier Phone:</label> 
					<input type="number" name="spPhone" id="phone" value="<%=phone%>" required> 
                    <span id="phoneError" style="color: red;"></span><br><br>	
                    
					<label for="itemQuantity">Supplier categories:</label> 
					<input type="text" name=spCategories value="<%=categories%>" required>




			<!-- Creating cancel and update button -->
				<button type="button" class="btn btn-cancel" data-toggle="modal" data-target="#cancelModal">Cancel</button>
				<button type="submit" class="btn btn-update" data-toggle="modal" data-target="#cancelModal">Update</button>
		
			</form>



			<!-- Creating Cancel pop-up -->
			<div class="modal fade" id="cancelModal" tabindex="-1" role="dialog" aria-labelledby="cancelModalLabel" aria-hidden="true">
				
				<div class="modal-dialog" role="document">
					
					<div class="modal-content">
						<div class="modal-header">
							
							<h5 class="modal-title" id="cancelModalLabel">Confirm Cancel</h5>
						
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
				
						</div>
						
					
						<div class="modal-body">Are you sure you want to cancel the update?</div>
					
						<div class="modal-footer">
						
							<button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
							<a href="supplierTableBtn.jsp" class="btn btn-danger">Yes, Cancel</a>
						
						
						
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
 
 
 <!-- validate supplier data -->
 <script>
 
        function validateForm() {
        	
            var email = document.getElementById("email").value;
            var phone = document.getElementById("phone").value;

            
            
            // Validate email (checking if the email has @ sign)
            if (!email.includes('@')) {
                
            	document.getElementById("emailError").innerText = "Email must contain '@' symbol.";
               
                return false; // Prevent form submission
                 
                
            } else {
            	
                document.getElementById("emailError").innerText = "";
            }

            
            
            
            // Validate phone number (checking if the phone number has 10 integers)
            if (!/^\d{10}$/.test(phone)) {
               
            	document.getElementById("phoneError").innerText = "Phone number must have 10 integers.";
             
            	return false; // Prevent form submission
            	
            	
            } else {
            	
                document.getElementById("phoneError").innerText = "";
            }

            return true; // Form is valid
        }
        
        
    </script>
    
    
</body>
	
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>

</html>
