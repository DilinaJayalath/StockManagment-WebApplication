<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	
	<%@ include file="header.jsp" %>
<% 

	double sum = (Double) session.getAttribute("sum");
  
%>

        <link rel="stylesheet" href="css/payment.css">
        <div class="logincontainer">
            <div class="login-main-box">
                <h1>Payment Details</h1>
                <form action="pay" method="POST">
                     <div class="login-input-box">

                        <input name= "CHName" type="text" required>
                        <label>Card Holder Name</label>
                    </div>
                    
                    
                    <div class="login-input-box">
                 
                        <input name= "Address" type="text" required>
                        <label>Address</label>
                    </div>
                    
                    
                    <div class="login-input-box">
                   
                        <input name= "CardNo" type="text" required>
                        <label>Card Number</label>
                    </div>
                    
                                        
                    <div class="login-input-box">
       
                        <input name= "Pincode" type="text" required>
                        <label>CVV</label>
                    </div>
                     
     

                    <div class="login-input-box">
                       <p>Total Amount</p>
                        <input name="Amount" type="number" value = "<%=sum %>" readonly>
                        
                    </div>
					<button type="submit" class="login-btn">Pay</button>

                    <div class="login-register">
                       <a href="Customer_Login.jsp" class="register-link"> </a>
                    </div>
                    
                   
                    
                </form>

            </div>
        </div>
</body>
</html>