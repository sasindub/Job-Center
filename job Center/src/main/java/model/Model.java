package model;
import connection.Db;
import java.sql.*;

public class Model {

	private static Connection con = Db.connect(); //get the connection
	private static Statement st = null;	// declare the statement
	
	public Model() {
		
	}
	
	//register users
	public static void insertReg(String name, String pass, String email) {
		try {
			
			String sql = "INSERT INTO admin(name,password,email) VALUES('" + name + "','" + pass + "','" + email + "')"; //user insert query
			st = con.createStatement(); //define the statement
			st.executeUpdate(sql); //execute the query
			
		}catch(Exception e) {
			System.out.println(e);
		}
	}
	
	//login validation
	public static int login(String password, String uname) {
		int status = 0;
		try {
			String sql = "SELECT password from admin where name = '" + uname + "'"; //select password for the user name
			st = con.createStatement();//define the statement
			ResultSet rs = st.executeQuery(sql); //assign the sql execution to result set
			
			if(rs.next()) {
				if(rs.getString("password").equals(password)) { //if passwords are matching
					status =  1; 
				}else { //if not passwords are matching
					status = 2;
				}
			}else {
				status = 2; //if not found table record
			}
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
	return status; //return status
	}
	
	//insert new job
	public static void insertJob(String pos, double sal, String type, String contact, String des,String user) {
		try {
			String sql = "INSERT INTO job(position,salary,type,contact,description,user) VALUES('" + pos + "'," + sal + ",'" + type +  "','" + contact + "','" +des + "','" + user + "')"; //insert query
			st = con.createStatement(); //define statement
			st.executeUpdate(sql);//execute the query
			
		}catch(Exception e) {
			System.out.println(e);
		}
	}
	
	//get job add details
	public static ResultSet getjob() {
		ResultSet rs = null; //declare result set
		try {
			String sql = "SELECT * from job"; // select query
			st = con.createStatement(); //define statement
			rs = st.executeQuery(sql);//assign the sql execution to result set
			
		
		}catch(Exception e) {
			System.out.println(e);
		}
		return rs; //return the result set
	}
	
	//get jobs of users
	public static ResultSet getmyjob(String user) {
		ResultSet rs = null;
		try {
			String sql = "SELECT * from job where user = '" + user + "'"; // select query
			st = con.createStatement();//define statement
			rs = st.executeQuery(sql);//assign the sql execution to result set
			
		
		}catch(Exception e) {
			System.out.println(e);
		}
		return rs;  //return the result set
	}
	
}
