<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
<%@page import="java.sql.*"%>
<%@ page import ="javax.sql.*" %>
<%
String ide=request.getParameter("petid");
session.putValue("petid",ide); 
String pwd=request.getParameter("password"); 
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String problem=request.getParameter("problem");
String test=request.getParameter("test");
String address=request.getParameter("address");

String dor=request.getParameter("dor");
try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shubhamhospital","root", "Plmqaz10");
Statement st=null;
st=conn.createStatement();
st.executeUpdate("insert into test1 values ('"+ide+"','"+pwd+"','"+fname+"',	'"+lname+"','"+problem+"','"+test+"','"+address+"','"+dor+"')"); 
response.sendRedirect("http://localhost:8184/Project/WelcomeDoctor.html");
}
catch(Exception e){
System.out.println(e);
    }
%>


</html>