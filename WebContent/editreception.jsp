<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body background="adddoc.jpg">
<a href = "http://localhost:8184/Project/ReceptionOperation.jsp">Go Back</a>
<center><h1>Receptionist Details</h1></center>
</body>
<center>
<%@page language="java"%>
<%@page import="java.sql.*"%>

<form method="post" action="UpdateReception.jsp">
<table border="1">
<tr><th>First Name</th><th>Last Name</th><th>Email</th><th>Address</th><th>Date of Joining</th></tr>
<%
String id=request.getParameter("repid");

int sumcount=0;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shubhamhospital", "root", "Plmqaz10");
String query = "select * from reception where repid='"+id+"'";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next()){
%>
<tr>
<td><input type="text" name="fname" value="<%=rs.getString("fname")%>"></td>
<td><input type="text" name="lname" value="<%=rs.getString("lname")%>"></td>
<td><input type="text" name="email" value="<%=rs.getString("email")%>"></td>
<td><input type="text" name="address" value="<%=rs.getString("address")%>"></td>
<td><input type="text" name="doj" value="<%=rs.getString("doj")%>"></td>
<td><input type="hidden" name="repid" value="<%=rs.getString("repid")%>"></td>
</tr>
<tr>
<td><input type="submit" name="Submit" value="Update" >
</tr>
<%
}
}
catch(Exception e){}
%>
</table>
</form>

</center>
</html>