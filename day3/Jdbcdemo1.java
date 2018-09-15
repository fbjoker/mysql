package com.doufu.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.junit.Test;

public class Jdbcdemo1 {
	public static void main(String[] args) throws SQLException {
		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		String url="jdbc:mysql://localhost:3306/demo4";
		String user="root";
		String password="root123";
		String insert="INSERT INTO account(NAME,balance) VALUES('kakaluo', 100000)";
		Connection con = DriverManager.getConnection(url, user, password);
		
		  Statement stmt = con.createStatement();
		stmt.executeUpdate(insert);
	}
	
	@Test
	public void find() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/demo4";
		String user="root";
		String password="root123";
		Connection con = DriverManager.getConnection(url, user, password);
		
		Statement stmt = con.createStatement();
		
		String sql="select * from account";
		String insert="INSERT INTO account(NAME,balance) VALUES('kakaluo', 100000)";
		stmt.executeUpdate(insert);
		ResultSet sct = stmt.executeQuery(sql);
		while(sct.next()){
			int id = sct.getInt(1);
			String name = sct.getString(2);
			double balance = sct.getDouble(3);
			System.out.println(id+"\t"+name+"\t"+balance);
		}
		
	}
	@Test
	public void login(int id ,String name ) throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/demo4";
		String user="root";
		String password="root123";
		Connection con = DriverManager.getConnection(url, user, password);
		String sql="select * from account where id=? and name=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, id);
		pstmt.setString(2, name);
		
		ResultSet sct = pstmt.executeQuery();
		if(sct.next()){
			System.out.println("yes");
		}else{
			System.out.println("no!!");
		}
		
	}
	@Test
	public void testlogin() throws Exception{
		login(1,"kakaluo");
	}

}
