package com.atguigu.javase.jdbc.demo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import org.junit.Test;


public class LoginDemo2 {
	public void login(String username,String password) throws Exception{
		//加载驱动 注册驱动
		Class.forName("com.mysql.jdbc.Driver");//把一个类加载进内存
		//得到连接
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb1",
				"root", "poi");
		//发送查询的sql语句
		String sql = "select * from user where username =? and password=?";
		
		//得到发送器
		//PreparedStatement 叫做预编译的Statement
		PreparedStatement pstmt = con.prepareStatement(sql);
		//给占位符赋值
		pstmt.setString(1, username);
		pstmt.setString(2, password);
		System.out.println(sql);
		ResultSet rst = pstmt.executeQuery();
		if(rst.next()){
			System.out.println("欢迎"+username+"登录！！！");
		}else{
			System.out.println("登录失败");
		}
		
		//资源关闭
		rst.close();
		pstmt.close();
		con.close();
	}
	@Test
	public void method() throws Exception{
//		login("zhangsan", "123456");
		login("a' or 'a'='a", "a' or 'a'='a");
		
	}
	
}
