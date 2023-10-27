<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>

<html>
	<head>
   		 <link rel="stylesheet" href="css/addSupplier.css">
   		 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
   		 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
 
        
    <title>Supplier Onboarding</title>

	</head>

<body>


	<div class="main-content">
            
            <header>
                <div class="header-left">
               		<h1>Supplier Onboarding</h1>
                    <h7>Supplier Details</h7>
          
                </div>
                
            </header>
    </div>



	<!-- Display the value of the "supplierExists" attribute from the session. -->
	<c:out value="${sessionScope.supplierExists}" />




	<!-- Creating sidebar -->
	<div class="dashboard">
        <div class="sidebar">
            <ul>
                <li><a href="supplierTableBtn.jsp"><i class="fas fa-chart-bar"></i> Dashboard</a></li>
                <li><a href="#"><i class="fas fa-user-friends"></i> Suppliers</a></li>
                <li><a href="#"><i class="fas fa-box-open"></i> Products</a></li>
                <li><a href="logout"><i class="fa fa-sign-out" aria-hidden="true"></i> LogOut</a></li>
            </ul>
        </div>
        
    </div>    
    
    
    
    <!-- Check if there is similar email -->
    
    <% 
    String uEmail = (String) session.getAttribute("supplierExists"); // Get the "supplierExists" attribute from the session and store it in the "saveUname" variable.

    session.removeAttribute("supplierExists"); // Remove the session attribute
	%>


 	<%
	if("Email".equals(uEmail)){
	%><h5 style="color: red;"><%=uEmail %> Is Already available</h5>
	

	<% 

	}else{

	%>   
	
	<h5>Add Supplier Details</h5>
	
	<%
	}
	%>
    <form action="addSupplier" method="post"  onsubmit="return validateForm()">
        
        <label for="supplier_name">Supplier Name:</label>
        <input type="text" id="supplier_name" name="spName" required><br><br>

        <label for="email">Email:</label>
        <input type="text" id="email" name="spEmail" required>
        <span id="emailError" style="color: red;"></span><br><br>
        
        
        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="spPhone" required>
        <span id="phoneError" style="color: red;"></span><br><br>

        <label for="product_categories">Product Categories:</label>
        <input type="text" id="product_categories" name="spCategories" required><br><br>

        <input type="submit" value="Add Supplier">
   
    </form>
  
 <script>
 
 
        function validateForm() {
        	
        	
            var email = document.getElementById("email").value;
            var phone = document.getElementById("phone").value;

            
            
            // Validate email
            if (!email.includes('@')) {
            	
                document.getElementById("emailError").innerText = "Email must contain '@' symbol.";
                
                return false; // Prevent form submission
         
            
            } else {
                document.getElementById("emailError").innerText = "";
            }
            
            

            // Validate phone number (10 integers)
            if (!/^\d{10}$/.test(phone)) {
            	
            	
                document.getElementById("phoneError").innerText = "Phone number must have 10 digits.";
               
                return false; // Prevent form submission
           
            
            } else {
            	
                document.getElementById("phoneError").innerText = "";
            }
            
            

            return true; // Form is valid
        }
        
        
    </script>
  
  
</body>
</html>
