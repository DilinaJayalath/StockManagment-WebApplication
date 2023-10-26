<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>


    <body>

        <link rel="stylesheet" href="css/register.css">
        <div class="logincontainer">
            <div class="login-main-box">
                <h1>Register</h1>
                <form action="reg" method="POST">
                     <div class="login-input-box">
                        <span class="input-icon"><i class="bx bxs-envelope"></i></span>
                        <input name= "name" type="text" required>
                        <label>Name</label>
                    </div>
                    
                    
                    <div class="login-input-box">
                        <span class="input-icon"><i class="bx bxs-envelope"></i></span>
                        <input name= "email" type="email" required>
                        <label>Email</label>
                    </div>
                    
                    
                    <div class="login-input-box">
                        <span class="input-icon"><i class="bx bxs-envelope"></i></span>
                        <input name= "phone" type="text" required>
                        <label>Phone Number</label>
                    </div>
                    
                                        
                    <div class="login-input-box">
                        <span class="input-icon"><i class="bx bxs-envelope"></i></span>
                        <input name= "uname" type="text" required>
                        <label>User Name</label>
                    </div>
                    

                    <div class="login-input-box">
                        <span class="input-icon"><i class="bx bxs-lock-alt"></i></span>
                        <input name="pswd" type="password" required>
                        <label>Password</label>
                    </div>
					<button type="submit" class="login-btn">Register</button>

                    <div class="login-register">
                        <p>have an Account?<a href="Customer_Login.jsp" class="register-link">Sign Up</a></p>
                    </div>
                    
                </form>

            </div>


        </div>





</body>
</html>