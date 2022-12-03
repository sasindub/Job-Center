package connection;
import java.sql.*;

public class Db {
	public static Connection connect() {
		Connection con = null; //connection declare
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root",""); //assign the path of database define the connection
			System.out.println("connect");
		}catch(Exception e) {
			System.out.println(e);
		}
		
		return con;//return the connection
	}
}
