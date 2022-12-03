<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.Model, java.sql.*"%>
    <%! ResultSet rs = null; // declare result set %>
    <% rs = Model.getjob(); // assign the result set%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Job Center | Admin </title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

<style>


.form{
	
   margin-top:120px;  
   background-color: #fcfcfc;
}

.form input{
	padding:5px;
	width: 50%;
	
}

.form textarea{
	padding:5px;
	width: 50%;
	
}

.form select{
	padding:5px;
	width: 50%;
	
}
</style>

</head>
<body>
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container"><a class="navbar-brand" href="#" style="font-size: 20pt;">Job Center</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav" style="margin-left:1020px;">
        <a class="nav-link" href="login.html">LOGIN</a>
        <a class="nav-link" href="register.html">REGISTER</a>
      </div>
    </div>
  </div>
</nav>
	
	
	<div class="container mt-5">
	<% 
	//get the all job details
	while(rs.next()) {%>
		<div class="row shadow p-4 mb-3">
			<div class="row">
				<div class="col-6">
				<span class="float-start" style="font-weight: 600; font-size: 15pt;">Salary: Rs.<%= rs.getDouble("salary") %></span>
				</div>
				
				
				
				<div class="col-12 rounded p-2 m-2" style="background-color:#f5fafc;">
				<span style="font-size: 15pt;"><%= rs.getString("description") %></span>
				</div>
				
				<div class="col-6">
				<span style="font-size: 15pt; opacity: 0.5;"> Contact: <%= rs.getString("contact") %></span>
				</div>
				
				<div class="col-6">
				<span class="float-end" style="font-size: 15pt; opacity: 0.5;"><%= rs.getString("type") %></span>
				</div>
				
				<div class="col-12">
				<span class="float-start" style="font-weight: 600; font-size: 15pt; opacity: 0.5;">Position: <%= rs.getString("position") %></span>
				</div>
				
				<div class="col-12">
				<form method="post" action="apply.jsp">
					<button type="submit" id="<%= rs.getString("id") %>" name="apply"  class="btn btn-primary"/> Submit </button>
				</form>
				</div>
				
			</div>
		</div>
		<%} %>
	</div>
	
	
</body>
</html>