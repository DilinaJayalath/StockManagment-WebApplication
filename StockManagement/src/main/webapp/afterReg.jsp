<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%@taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %> 
      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>fuhsdfsdfh</h1>
<% 
Boolean iss = (Boolean) request.getAttribute("res"); 
String resl = "Unsuccess"; %>

<% if(iss == true){ resl = "Success"; } else{resl ="Unsuccess";}%>

<h1> <%= resl %></h1>
<h1>544564</h1>


</body>
</html>

