<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.Model"%>

<% 
//get details from register html
	String uname = request.getParameter("uname");
	String password = request.getParameter("password");
	String cpassword = request.getParameter("cpassword");
	String email = request.getParameter("email");
	
	if(password.equals(cpassword)){ //if confirm password
	
	Model.insertReg(uname,password,email);  //insert login details
	response.sendRedirect("login.html");// redirect to login html
	}
	
	else{
		// if password not confirm print error msg
		
	%>
	<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Job Center | Register </title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

<style>

body{padding-left:100px;
padding-right:100px;}

.form{
	
   margin-top:150px;  
   background-color: #fcfcfc;
}

.form input{
	padding:5px;
	width: 50%;
	
}
</style>

</head>
<body>
	
	<div class="form container text-center p-5">
	<h1 class="text-center mb-5" style="font-size:17pt;  ">Registration</h1>
	
	<form action="register.jsp" method="POST">
	
		<span style="color:red;">Password does not matching!</span><br>
		<input name="uname"  type="text" placeholder="Enter your name"/> <br></br>
		<input name="email"  type="text" placeholder="Enter your e-mail"/> <br></br>
		<input name="password"  type="password" placeholder="Enter your password"/> <br></br>
		<input name="cpassword"  type="password" placeholder="Re-Enter your password"/> <br></br>
		
		<button class="btn btn-primary float-end" type="submit" name="submit">Register >></button>
	
	
	</form>
	</div>
	
	
</body>
</html>
		
	<%}
	
	


%>