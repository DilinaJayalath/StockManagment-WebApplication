<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Mall</title>

    <link rel="stylesheet" href ="css/product.css" >
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

</head>
<body>

<%@ include file="header.jsp" %>

<% 
    int cusId = (Integer) session.getAttribute("cusId");
  
%>
                

       <section class="shop container">
        <h2 class="section-title">I PHONE SHOP</h2>
        <div class="shop-content">
      <c:forEach var="item" items="${itemListCus}">
                        
              <%--          
                           <p> ${item.itemNo}
                            ${item.itemName}
                            ${item.itemCode}
                            <img src ="images/${item.itemPhoto}" alt="photo" width=100px;>
                            ${item.itemQuantity}
                            ${item.itemPrice}</p>
                          --%>

    

        
            <div class="product-box">
                <img src="images/${item.itemPhoto}" alt="1" class="product-img">
                <h2 class="product-title">${item.itemName}</h2>
                <span class="price">${item.itemPrice}</span>
                <%-- <a href="Card.jsp?num=${item.itemNo}&name=${item.itemName}&price=${item.itemPrice}">  --%>
                
           
            <form action="/StockManagement/cartServlet"  method ="post">
            
             <input type="hidden" name = "cusId" value="<%=cusId%>">
            <input type="hidden" name = "itemCode" value="${item.itemCode}">
               <input type="hidden" name = "itemName" value="${item.itemName}">
                  <input type="hidden" name = "itemPrice" value="${item.itemPrice}">
         		 <button type ="submit"> <i class='bx bx-shopping-bag add-cart'></i></button>
            </form>

 </div>


</c:forEach>
        </div>
        <br>
        <br>
        <form action="/StockManagement/cartTableServlet" method ="post">
      <input type="hidden" name = "cusId" value="<%=cusId%>">
    <button type= "submit" name ="cartT"> <i class = "cartT">GO TO CART</i> </button>
    </form>
    </section>


    <script src="javascript/1.js"></script>

    
</body>
</html>

