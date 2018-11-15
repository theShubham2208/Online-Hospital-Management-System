<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body background="adddoc.jpg">
<a href = "http://localhost:8184/Project/DoctorOperations.jsp">Go Back</a>
<center><h1>Patient Details</h1></center>
</body>
<center>
<%@page language="java"%>
<%@page import="java.sql.*"%>

<form method="post" action="AddTest.jsp">
<table border="1">
<tr><th>Password</th><th>First Name</th><th>Last Name</th><th>Suffering From</th><th>Tests</th><th>Address</th><th>Date of Registration</th></tr>
<%
String id=request.getParameter("petid");

int sumcount=0;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shubhamhospital", "root", "Plmqaz10");
String query = "select * from patient where petid='"+id+"'";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next()){
%>
<tr>
<td><input type="password" name="password" value="<%=rs.getString("pwd")%>"></td>
<td><input type="text" name="fname" value="<%=rs.getString("fname")%>"></td>
<td><input type="text" name="lname" value="<%=rs.getString("lname")%>"></td>
<td><input type="text" name="problem" value="<%=rs.getString("problem")%>"></td>
<td><input type="text" name="test" ></td>
<td><input type="text" name="address" value="<%=rs.getString("address")%>"></td>
<td><input type="text" name="dor" value="<%=rs.getString("dor")%>"></td>

<td><input type="hidden" name="petid" value="<%=rs.getString("petid")%>"></td>
</tr>
<tr>
<td><input type="submit" name="Submit" value="AddTest" >
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