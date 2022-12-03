<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.Model"%>
<% 
//get details from admin html
	String position = request.getParameter("position");
double salary = Double.parseDouble(request.getParameter("salary"));
String type = request.getParameter("type");
String contact = request.getParameter("contact");
String des = request.getParameter("des");
String user = (String)session.getAttribute("user"); //assign user session to user string

Model.insertJob(position,salary,type,contact,des,user); // insert job details
response.sendRedirect("job.jsp"); //redirect to the job.jsp page

%>