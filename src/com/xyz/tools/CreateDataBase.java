package com.xyz.tools;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class CreateDataBase {
	
	private static String adminName = "root";
	
	private static String adminPassword = "123456";					//密码是自己数据库的密码，要改的

	public static void main(String[] args) {
		
		Connection dbConn = null; 
		String driverName = "com.mysql.jdbc.Driver";

		String dbURL = "jdbc:mysql://localhost:3306/mysql?useUnicode=true&characterEncoding=utf8";     
		 
			 
		try {

		  Class.forName(driverName);
		  dbConn = DriverManager.getConnection(dbURL,adminName,adminPassword); 
		  
		  Statement statement = dbConn.createStatement();
		    
		  String sql = "CREATE DATABASE  Association"+ "\t" +"CHARACTER SET 'utf8'" +
                       " COLLATE 'utf8_general_ci'; ";  //UTF-8编码
		  
		  int i = statement.executeUpdate(sql);
		  System.out.println(i);
		 
		}catch(Exception e){
			  
			 e.printStackTrace();	
		} 
	}
}
