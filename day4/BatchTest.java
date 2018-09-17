package com.doufu.homework;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import javax.sql.DataSource;

import org.junit.Test;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.pool.DruidDataSourceFactory;

public class BatchTest {
	public static void main(String[] args) throws Exception {
		try {
			Connection con = MyJdbcUtil.getConnection();
			String sql="INSERT INTO userdata VALUES (?,?)";
			PreparedStatement pst = con.prepareStatement(sql);
			
			for (int i = 3; i <=2000; i++) {
				pst.setObject(1, "isabela"+i);
				pst.setObject(2, "mamamiya"+i);
				
				pst.addBatch();
			}
			pst.executeBatch();
			
			MyJdbcUtil.release(con, pst);
			
		} catch (SQLException e) {
			throw new RuntimeException();
		}
		
	}

}
