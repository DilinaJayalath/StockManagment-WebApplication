<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/addSupplier.css">
    <title>Supplier Onboarding</title>
</head>
<body>
    <h1>Supplier Onboarding</h1>


	<c:out value="${sessionScope.supplierExists}" />
<% 
    String saveUname = (String) session.getAttribute("supplierExists");
    session.removeAttribute("supplierExists"); // Remove the session attribute
%>


 <%
	if("Email".equals(saveUname)){
	%><p style="color: red;"><%=saveUname %> Is Already available</p>
	

	<% 
	
	}else{
	
	%>   <p>Enter Seller Details</p> <%
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
