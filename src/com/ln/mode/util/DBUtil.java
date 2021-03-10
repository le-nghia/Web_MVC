package com.ln.mode.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



import com.ln.mode.beans.Students;
import com.ln.mode.beans.UserAcction;

public class DBUtil {
	public static UserAcction findUser(Connection conn,String userName,
			String password) throws SQLException {
		String sql = "select a.userName, a.password, a.gender from UserAcc a"
				+ "where a.userName = ? and a.password";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, userName);
		pstm.setString(2, password);
		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
            String gender = rs.getString("Gender");
            UserAcction user = new UserAcction();
            user.setUserName(userName);
            user.setPassword(password);
            user.setGender(gender);
            return user;
        }
        return null;
		
	}
	public static UserAcction findUser(Connection conn,String userName) throws SQLException {
		  String sql = "Select a.userName, a.password, a.gender from UserAcc a "
	                + " where a.userName = ? ";
	 
	        PreparedStatement pstm = conn.prepareStatement(sql);
	        pstm.setString(1, userName);
	 
	        ResultSet rs = pstm.executeQuery();
	 
	        if (rs.next()) {
	            String password = rs.getString("password");
	            String gender = rs.getString("gender");
	            UserAcction user = new UserAcction();
	            user.setUserName(userName);
	            user.setPassword(password);
	            user.setGender(gender);
	            return user;
	        }
	        return null;
	}
	public static List<Students> queryProduct(Connection conn) throws SQLException {
		String sql = "Select a.ID, a.Name, a.Gender, a.Birthday, a.Address from Student a ";
		 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        ResultSet rs = pstm.executeQuery();
        List<Students> list = new ArrayList<Students>();
        while (rs.next()) {
            String id = rs.getString("ID");
            String name = rs.getString("Name");
            String gender = rs.getString("Gender");
            String birthday = rs.getString("Birthday");
            String address = rs.getString("Address");
            Students student = new Students();
            student.setID(id);
            student.setName(name);
            student.setGender(gender);
            student.setBirthday(birthday);
            student.setAddress(address);
            list.add(student);
        }
        return list;
	}
	public static Students findProduct(Connection conn, String id) throws SQLException {
        String sql = "Select a.ID, a.Name, a.Gender, a.Birthday, a.Address from Student a where a.ID=?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, id);
 
        ResultSet rs = pstm.executeQuery();
 
        while (rs.next()) {
            String name = rs.getString("Name");
            String gender = rs.getString("Gender");
            String birthday = rs.getString("Birthday");
            String address = rs.getString("Address");
            Students students = new Students(id, name, gender,birthday,address);
            return students;
        }
        return null;
    }
 
    public static void updateProduct(Connection conn, Students students) throws SQLException {
        String sql = "Update Student set Name =?, Gender=?, Birthday=?, Address=? where ID=? ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, students.getName());
        pstm.setString(2, students.getGender());
        pstm.setString(3, students.getBirthday());
        pstm.setString(4, students.getAddress());
        pstm.setString(5, students.getID());
        pstm.executeUpdate();
    }
 
    public static void insertProduct(Connection conn, Students students) throws SQLException {
        String sql = "Insert into Student(ID, Name,Gender,Birthday,Address) values (?,?,?,?,?)";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, students.getID());
        pstm.setString(2, students.getName());
        pstm.setString(3, students.getGender());
        pstm.setString(4, students.getBirthday());
        pstm.setString(5, students.getAddress());
 
        pstm.executeUpdate();
    }
 
    public static void deleteProduct(Connection conn, String ID) throws SQLException {
        String sql = "Delete From Student where ID= ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, ID);
 
        pstm.executeUpdate();
    }

}
