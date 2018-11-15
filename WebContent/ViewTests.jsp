<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"                                                    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="adddoc.jpg">
<center><h1>PATIENT DETAILS</h1></center>
</body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<center>
<form method="post">

<table border="2">
<tr>
<td>ID</td>
<td>FirstName</td>
<td>LastName</td>
<td>Suffering From</td>
<td>Tests</td>
<td>Address</td>
<td>Date of Registration</td>
</tr>
<%
try
{
	String id=request.getParameter("petid"); 
	session.putValue("petid",id); 
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ShubhamHospital",
	"root","Plmqaz10"); 
	Statement st= con.createStatement(); 
	ResultSet rs; 
	
	 rs= st.executeQuery("Select *from test1 where petid='"+id+"'");
while(rs.next())
{

%>
    <tr><td><%=rs.getString("petid") %></td>
    <td><%=rs.getString("fname") %></td>
    <td><%=rs.getString("lname") %></td>
    <td><%=rs.getString("problem") %></td>
    <td><%=rs.getString("test") %></td>
    <td><%=rs.getString("address") %></td>
    <td><%=rs.getString("dor") %></td></tr>
        <%

}
%>
    </table>
    <%
    rs.close();
    st.close();
    con.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }




%>

</form>
</center>
</html>