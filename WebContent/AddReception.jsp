<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Doctor</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%

String repid=request.getParameter("RepId"); 
session.putValue("RepId",repid); 
String pwd=request.getParameter("Password"); 
String fname=request.getParameter("FirstName"); 
String lname=request.getParameter("LastName"); 
String email=request.getParameter("Email"); 
String address=request.getParameter("Address"); 

String doj=request.getParameter("DOJ"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ShubhamHospital",
"root","Plmqaz10"); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into reception values ('"+repid+"','"+pwd+"','"+fname+"',	'"+lname+"','"+email+"','"+address+"','"+doj+"')"); 

out.println("Registered"); 
response.sendRedirect("http://localhost:8184/Project/ReceptionOperation.jsp");

%>

</body>
</html>