package cn.sxt.shop.utils;



import java.sql.Connection;
import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class ComPoolUtil {

	static ComboPooledDataSource dataSource = null;
	
	static{
		//初始化连接池的对象
		dataSource  = new ComboPooledDataSource();  //加载的是default-config 
		
//		dataSource  = new ComboPooledDataSource("oracleConfig");  //加载的是Oracle-config 
		
	}
	
	
	//返回DBUtil 的核心控制器  QueryRunner
	public static QueryRunner getQueryRunner(){
		//核心控制器
		QueryRunner runner = new QueryRunner(dataSource);
		
		return runner;
	}
	
	public static void main(String[] args) {
//		QueryRunner runner = new QueryRunner(dataSource);
		try {
			Connection conn = dataSource.getConnection();
			
			System.out.println(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
