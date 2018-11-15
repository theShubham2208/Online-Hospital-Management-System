<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"                                                    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="adddoc.jpg">
<center><h1>DOCTOR DETAILS</h1></center>
</body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<center>
<form method="post" action="DeleteDoctor.jsp">

<table border="2">
<tr>

<td>FirstName</td>
<td>LastName</td>
<td>Email</td>
<td>Address</td>
<td>Departement</td>
<td>Date of Joining</td>
</tr>
<%
try
{
	String id=request.getParameter("doctor"); 
	session.putValue("petid",id); 
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ShubhamHospital",
	"root","Plmqaz10"); 
	Statement st= con.createStatement(); 
	ResultSet rs; 
	
	 rs= st.executeQuery("Select *from doctor1 where doctor='"+id+"'");
while(rs.next())
{

%>
    <tr>
<td><input type="text" name="fname" value="<%=rs.getString("fname")%>"></td>
<td><input type="text" name="lname" value="<%=rs.getString("lname")%>"></td>
<td><input type="text" name="email" value="<%=rs.getString("email")%>"></td>
<td><input type="text" name="address" value="<%=rs.getString("address")%>"></td>
<td><input type="text" name="dept" value="<%=rs.getString("dept")%>"></td>
<td><input type="text" name="doj" value="<%=rs.getString("doj")%>"></td>
<td><input type="hidden" name="doctor" value="<%=rs.getString("doctor")%>"></td>
</tr>
<tr>
<td><input type="submit" name="Submit" value="Delete" >
</tr>
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