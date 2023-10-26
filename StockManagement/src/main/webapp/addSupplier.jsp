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
                    <h7>Add Supplier Details</h7>
          
                </div>
                
            </header>
    </div>


	<c:out value="${sessionScope.supplierExists}" />



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
    
    
    	<% 
    String saveUname = (String) session.getAttribute("supplierExists");
    session.removeAttribute("supplierExists"); // Remove the session attribute
	%>


 	<%
	if("Email".equals(saveUname)){
	%><h5 style="color: red;"><%=saveUname %> Is Already available</h5>
	

	<% 
	}else{
	%>   
	
	<h5>Seller Details</h5>
	
	<%
	}
	%>
    <form action="addSupplier" method="post">
        
        <label for="supplier_name">Supplier Name:</label>
        <input type="text" id="supplier_name" name="spName" required><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="spEmail" required><br><br>

        <label for="phone">Phone:</label>
        <input type="tel" id="phone" name="spPhone" required><br><br>

        <label for="product_categories">Product Categories:</label>
        <input type="text" id="product_categories" name="spCategories" required><br><br>

        <input type="submit" value="Add Supplier">
   
    </form>
  
</body>
</html>
