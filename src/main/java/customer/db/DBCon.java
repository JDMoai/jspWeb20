package customer.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBCon {

	public static Connection getConnection() throws ClassNotFoundException, Exception{
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="hr";
		String pw="123456";
		Connection conn=DriverManager.getConnection(url,user,pw);
		
		return conn;
	}
}
