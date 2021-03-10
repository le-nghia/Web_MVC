package com.ln.mode.conn;

import java.sql.Connection;
import java.sql.SQLException;

public class ConnectSQL {
	
	public static Connection getConnection() throws ClassNotFoundException,SQLException{
		//Kết nối tới SQL.
		return SQLServerConnection.getSQLServerConnection();
	}
	public static void closeQuietly(Connection conn) {
        try {
            conn.close();
        } catch (Exception e) {
        }
    }
 
    public static void rollbackQuietly(Connection conn) {
        try {
            conn.rollback();
        } catch (Exception e) {
        }
    }

}
