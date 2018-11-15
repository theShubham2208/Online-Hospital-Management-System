<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Doctor Login</title>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
	
String doctor=request.getParameter("DoctorId"); 
session.putValue("DoctorId",doctor); 
String pwd=request.getParameter("Password"); 
Class.forName("com.mysql.jdbc.Driver"); 
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ShubhamHospital","root","Plmqaz10"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from doctor1 where doctor='"+doctor+"'"); 
if(rs.next()) 
{ 
if(rs.getString(2).equals(pwd)) 
{ 
out.println("welcome"+doctor); 
response.sendRedirect("http://localhost:8184/Project/WelcomeDoctor.html");
} 
else 
{ 
out.println("Invalid password try again"); 
} 
} 

%>
<a href="index.html">Home</a>
</body>
</html>