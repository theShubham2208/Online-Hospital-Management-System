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

<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("repid");
int num=Integer.parseInt(id);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shubhamhospital", "root", "Plmqaz10");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM reception WHERE repid="+num);
out.println("Data Deleted Successfully!");
response.sendRedirect("http://localhost:8184/Project/ReceptionOperation.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</html>