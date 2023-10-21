<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
    <body>
        <link rel="stylesheet" href="css/login.css">
        <div class="logincontainer">
            <div class="login-main-box">
                <h1>Log In</h1>
                <form action="log" method="POST">
                     <div class="login-input-box">
                        <span class="input-icon"><i class="bx bxs-envelope"></i></span>
                        <input name= "u_name" type="text" required>
                        <label>UserName</label>
                    </div>

                    <div class="login-input-box">
                        <span class="input-icon"><i class="bx bxs-lock-alt"></i></span>
                        <input name="pw" type="password" required>
                        <label>Password</label>
                    </div>

                    <div class="login-ckeck">
                        <label><input type="checkbox">Remember me</label>
                        <a href="#">Forget Password</a>
                    </div>

                    <button type="submit" class="login-btn">Login</button>

                    <div class="login-register">
                        <p>Don't have an Account?<a href="reg.jsp" class="register-link">Sign Up</a></p>
                    </div>
                </form>

            </div>


        </div>
    
        








</body>
</html>