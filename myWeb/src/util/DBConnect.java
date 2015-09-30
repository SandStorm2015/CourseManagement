package util;

import java.sql.*;

public class DBConnect {
	private static final String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static final String url = "jdbc:sqlserver://localhost:1433; databaseName = PD_test";
	private static final String username = "test1";
	private static final String password = "123";
	private static Connection conn = null;
	static{
		try{
			Class.forName(driver);			
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
	}
	
	public static Connection getConnection() throws Exception {
		if(conn == null){				
			conn = DriverManager.getConnection(url, username, password);
			return conn;
		}		
		return conn;
	}

/*	public static void main(String[] args) {
		try{
			Connection conn = DBConnect.getConnection();
			if(conn != null){
				System.out.println("数据库连接成功！");
			}
			else{
				System.out.println("数据库连接失败！");
			}
		}
		catch(Exception ex){
			ex.printStackTrace();			
		}
	}
*/
}
