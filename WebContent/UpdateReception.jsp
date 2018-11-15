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
String ide=request.getParameter("repid");
int num=Integer.parseInt(ide);
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String address=request.getParameter("address");
String doj=request.getParameter("doj");
try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shubhamhospital","root", "Plmqaz10");
Statement st=null;
st=conn.createStatement();
st.executeUpdate("update reception set fname='"+fname+"',lname='"+lname+"',email='"+email+"',address='"+address+"',doj='"+doj+"' where repid='"+num+"'");
out.println("Updated");
response.sendRedirect("http://localhost:8184/Project/ReceptionOperation.jsp");
}
catch(Exception e){
System.out.println(e);
    }
%>


</html>