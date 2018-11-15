package webreg;
import java.sql.*;
public class Reception {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ShubhamHospital","root","Plmqaz10");
			Statement st= con.createStatement(); 
			ResultSet rs= st.executeQuery("Select *from reception");
		while(rs.next())
			System.out.println(rs.getString(1)+ " " +rs.getString(2)+ " " +rs.getString(3)+ " " +rs.getString(4)+ " " +rs.getString(5)+ " " +rs.getString(6)+ " " +rs.getString(7));
		con.close();
		}
catch(Exception e)
		{
	System.out.println(e);
		}
	}

}
