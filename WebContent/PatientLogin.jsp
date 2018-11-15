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
	
String patient=request.getParameter("PetId"); 
session.putValue("PetId",patient); 
String pwd=request.getParameter("Password"); 
Class.forName("com.mysql.jdbc.Driver"); 
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ShubhamHospital","root","Plmqaz10"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from test1 where PetId='"+patient+"'"); 
if(rs.next()) 
{ 
if(rs.getString(2).equals(pwd)) 
{ 
out.println("welcome"+patient); 
response.sendRedirect("http://localhost:8184/Project/WelcomePatient.html");
} 
else 
{ 
out.println("Invalid password try again"); 
} 
} 

%>

</body>
</html>