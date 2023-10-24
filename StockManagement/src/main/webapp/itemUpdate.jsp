<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Item</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
      <link rel="stylesheet" href="css/itemUpdate.css">

</head>
<body>
<%
    int no = Integer.parseInt(request.getParameter("num"));
    String name = request.getParameter("name");
    String code = request.getParameter("code");
    int qty = Integer.parseInt(request.getParameter("qty"));
    String photo = request.getParameter("photo");
%>

<form action="/StockManagement/updateItemServlet" method="post" onsubmit="return validateForm();" enctype="multipart/form-data">
    <h1>Edit Item</h1>
    <input type="number" name="itemId" value="<%= no%>" readonly>
    <label for="itemName">Item Name:</label>
    <input type="text" name="itemName" value="<%= name%>" required>
    <label for="itemCode">Item Code:</label>
    <input type="text" name="itemCode" value="<%= code%>" required>
    <label for="itemQuantity">Item Quantity:</label>
    <input type="number" name="itemQuantity"  id="task" class="form-control" value="<%= qty%>" required>
    
    
    <div class="form-group">
                <label for="itemPhoto">Item Photo</label>
                <input type="file" name="itemPhoto" id="itemPhotoInput" accept="image/*">
                <img id="itemPhotoPreview" src="images/<%= photo %>" alt="Default Image" style="max-width: 200px;">
            </div>
            <input type="hidden" name="hiddenField" value="<%= photo %>">

    <button type="button" class="btn btn-cancel" data-toggle="modal" data-target="#cancelModal">Cancel</button>
    <button type="submit" class="btn btn-update" data-toggle="modal" data-target="#cancelModal">Update</button>
</form>


	<script>
		// JavaScript to update the image when a file is selected
		const itemPhotoInput = document.getElementById('itemPhotoInput');
		const itemPhotoPreview = document.getElementById('itemPhotoPreview');

		itemPhotoInput.addEventListener('change', function() {
			if (itemPhotoInput.files && itemPhotoInput.files[0]) {
				const reader = new FileReader();
				reader.onload = function(e) {
					itemPhotoPreview.src = e.target.result;
				};
				reader.readAsDataURL(itemPhotoInput.files[0]);
			}
		});
    
	
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
