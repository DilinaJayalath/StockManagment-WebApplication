<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Task Details</title>
    
  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
       <link rel="stylesheet" href="css/addItem.css">
    

</head>
<body>
    <h1>Update Task Details</h1>
    
    
    
    
	<c:out value="${sessionScope.supplierExists}" />
<% 
    String saveUname = (String) session.getAttribute("itemExists");
    session.removeAttribute("itemExists"); // Remove the session attribute
%>


 <%
	if("item".equals(saveUname)){
	%><p>That Item Is Already Available</p>
	

	<% 
	
	}else{
	
	%>   <p style="color: black;">Enter Item Details</p> <%
}
%>
    
    
    
    
    <form action="addnew" method="post" class="task-form"  onsubmit="return validateForm();" enctype="multipart/form-data" >
    
        <div class="form-group">
            <label for="ename">Item Name</label>
            <input type="text" name="itemName" id="ename" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="eid">Item Code</label>
            <input type="text" name="itemCode" id="eid" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="task">Item Quantity</label>
            <input type="number" name="itemQuantity" id="task" class="form-control"  required>
        </div>
        
            <div class="form-group">
        <label for="eimage">Item Image</label>
        <input type="file" name="itemPhoto" id="eimage" class="form-control" required>
    </div>
    
    <div class="form-group">
            <label for="eid">Item Price</label>
            <input type="text" name="itemPrice" id="eid" class="form-control" required>
        </div>
        
        <div class="form-group">
            <button type="submit" name="submit" class="btn btn-primary">Add Items</button>
        </div>
    </form>
    

  
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
    function validateForm() {
        var quantity = document.getElementById("task").value;

        // Check if quantity is not empty and is a positive number
        if (quantity === "" || isNaN(quantity) || parseFloat(quantity) <= 0) {
            alert("Quantity must be a positive number.");
            return false; // Prevent form submission
        }

        return true; // Form is valid
    }
</script>


</body>
</html>
