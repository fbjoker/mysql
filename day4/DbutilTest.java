package com.doufu.homework;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import org.junit.Test;

public class DbutilTest {
	public static void main(String[] args) {
		String sql="DELETE FROM userdata WHERE id= ?";
		Connection con = MyJdbcUtil.getConnection();
		usualfun(sql, "bbb");
		usualfun2(sql, "ccc");
		usualfun3(MyJdbcUtil.getDataSource(),sql,"ddd");
		
		
	}
	
	
	public static void usualfun(String sql ,Object...parm){
		Connection con = MyJdbcUtil.getConnection();
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			for (int i = 1; i <=parm.length; i++) {
				
				pst.setObject(i, parm[i-1]);
			}
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void usualfun2(String sql ,Object...parm){
		Connection con = MyJdbcUtil.getConnection();
		
		 QueryRunner qr = new QueryRunner();
		 try {
			qr.update(con, sql, parm);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 
	}
	
	public static void usualfun3(DataSource ds,String sql ,Object...parm){
		 QueryRunner qr = new QueryRunner(ds);
		 try {
			qr.update( sql, parm);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 
	}
	
	@Test
	public void queryFun() throws Exception{
		//创建快速查询器
		
		QueryRunner qr = new QueryRunner(MyJdbcUtil.getDataSource());
		
//		1、单行多列
//		String sql = "SELECT * FROM USER WHERE PASSWORD=?";
//		User user = qr.query(sql, new BeanHandler<User>(User.class), "88888888");
//		System.out.println(user);
		
		//2、多行多列
//		String sql = "select * from user";
//		List<User> users = qr.query(sql, new BeanListHandler<User>(User.class));
//		System.out.println(users);
		
		//3、单行单列
		String sql = "SELECT username FROM USER WHERE PASSWORD=?";
		Object obj = qr.query(sql, new ScalarHandler(), "88888888");
		System.out.println(obj);
	}

}
