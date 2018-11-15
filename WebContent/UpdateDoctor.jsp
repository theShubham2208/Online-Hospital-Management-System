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
String ide=request.getParameter("doctor");
int num=Integer.parseInt(ide);
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String address=request.getParameter("address");
String dept=request.getParameter("dept");
String doj=request.getParameter("doj");
try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shubhamhospital","root", "Plmqaz10");
Statement st=null;
st=conn.createStatement();
st.executeUpdate("update doctor1 set fname='"+fname+"',lname='"+lname+"',email='"+email+"',address='"+address+"',dept='"+dept+"',doj='"+doj+"' where doctor='"+num+"'");
out.println("Updated");
response.sendRedirect("http://localhost:8184/Project/DoctorOperations.jsp");
}
catch(Exception e){
System.out.println(e);
    }
%>


</html>