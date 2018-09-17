package com.doufu.homework;

import java.io.IOException;
import java.sql.Connection;
import java.util.Properties;

import javax.sql.DataSource;

import com.alibaba.druid.pool.DruidDataSourceFactory;
import com.alibaba.druid.pool.ha.selector.DataSourceSelectorFactory;

public class DuridTest {
	public static void main(String[] args) throws Exception {
		
		//Connection con = MyJdbcUtil.getConnection();
		 try {
			 Properties pro = new Properties();
			pro.load(DuridTest.class.getClassLoader().getResourceAsStream("config.properties"));
			DataSource ds = DruidDataSourceFactory.createDataSource(pro);
			Connection connection = ds.getConnection();
			
			
		} catch (IOException e) {
			throw new RuntimeException();
		}
		
	}

}

