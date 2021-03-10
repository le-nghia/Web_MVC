package com.ln.mode.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SQLServerConnection {
	
	// Kết nối vào SQL Server.
    // (Sử dụng thư viện SQLJDBC)
	public static Connection getSQLServerConnection() 
			throws ClassNotFoundException,SQLException{
		
		// Chú ý: Thay đổi các thông số kết nối cho phù hợp.
        String hostName = "localhost";
        String database = "_Students";
        String userName = "sa";
        String password = "1997";
 
        return getSQLServerConnection(hostName,  database, userName, password);
    }
	
	// Kết nối tới SQLServer, sử dụng thư viện SQLJDBC.
	private static Connection getSQLServerConnection(String hostName, String database, String userName,
			String password) throws ClassNotFoundException,SQLException{
		// TODO Auto-generated method stub
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		
		// Cấu trúc URL Connection dành cho SQLServer
        // Ví dụ:
        // jdbc:sqlserver://localhost:1433;databaseName=_StudentsMg
		String connect = "jdbc:sqlserver://" + hostName + ":1433"
                + ";databaseName=" + database;
		Connection connec = DriverManager.getConnection(connect, userName, password);
		return connec;
	}

}


