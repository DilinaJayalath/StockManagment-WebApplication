<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	 <title>Stock Managemnt </title>
	 <link rel="icon" type="image/png" href="css/logo.png">
	<link rel="stylesheet" href="css/stockDetails.css">
	<script src="https://kit.fontawesome.com/9e8c18e993.js" crossorigin="anonymous"></script>
	

	
</head>

<body>
<table>
<tr>
<td class="logo1">
	<image src="css/logo.png" class ="logo">
</td>


<% 
    String saveUname = (String) session.getAttribute("saveUname");
  
%>


<td  class="logo2">	
	<h1 class="logo-text1">Stock Manager Dashboard </h1>
		<h4 class = "logo-text2">--Stock Management Website--</h4>
</td>



<td  class="logo3">	
<div class="buttons">

        <div class="dropdown">
	<button class="circle-button"><center><i class='far fa-user-circle' style="z-index: 9990; font-size:36px;color:white;"viewport></i></center></button>
	<div class="dropdown-content">

       <a href="profilesetting.php" target="iframe_a">Change Profile</a>
        <a href="logout">Logout</a>
      </div>
      </div>
      <div class="dropdown">
      	<h4 class = "logo-text2">   <p>Welcome, <%= saveUname %></p></h4>
        <button class="signup">Super Admin</button>
        <div class="dropdown-content">
        <a href="profilesetting.php" target="iframe_a">Change Profile</a>
        <a href="logout">Logout</a>
      </div>
      </div>
      </div>
    
  	
	</td>
	</tr>
</table>	 

	 <hr class="horizontal_line">
	 
	
<!-- 		<ul class="header">
			<li><a href = "#"><b>HOME</b></a></li>
			<li><a href = "#"><b>ABOUT US</b></a></li>
			<li><a href = "#"><b>NEWS</b></a></li>
			<li><a href = "#"><b>CONTACT US</b></a></li>
		</ul>
    
 -->
<table  class="fulltable">
  <tr>
    <td class="tdmain" style="width:20%; height:100px;" ><center><br><a href="addItem.jsp" target="iframe_a"><button class="dashboad_btn">Add New Item</button></a></center><br></td>
    <td class="trr" rowspan ="6" style="width:80%;">
      <iframe src="itemTableBtn.jsp" name="iframe_a" height="450px" width="100%" title="Iframe Example"></iframe>
    </td>
  </tr>
  <tr>
      <td class="tdmain" style="width:20%; height:40px;"><center><br><a href="itemTableBtn.jsp" target="iframe_a"><button class="dashboad_btn">Update stock Details</button></a></center><br></td>
      <td class="trr" rowspan="2" style="width:80%;">
          <iframe src="src/logo.png" name="iframe_a" height="20px" width="100%" title="Iframe Example"></iframe>
  </tr>
   <tr>
    <td class="tdmain" style="width:20%;"><center><br><a href="itemTableBtn.jsp" target="iframe_a"><button class="dashboad_btn">&nbsp;&nbsp;&nbsp;&nbsp;Genarate Report &nbsp;&nbsp;&nbsp;&nbsp;</button></a></center><br></td>
  </tr>
  <tr><td><p style="font-size: 50px; color:white;"></p></td></tr>
  <tr><td><p style="font-size: 60px; color:white;"></p></td></tr>
  <tr><td><p style="font-size: 20px; color:white;"></p></td></tr>
  <tr><td><p style="font-size: 20px; color:white;"></p></td></tr>
 
</table>
				
   


	
</body>
</html>