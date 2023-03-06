package com.rentcar.test.car;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CarDAO {

	Connection conn;
	PreparedStatement ps;
	ResultSet rs; 
	
	private CarDAO () {}
	static private CarDAO instanse = new CarDAO();
	static public CarDAO getInstance() {
		return instanse;
	}
	
	private void getConnection(){
		String url = "jdbc:mysql://localhost:3306/rentcardb?charaterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
		String user = "root";
		String pw = "root";
		
		try {
			 Class.forName("com.mysql.cj.jdbc.Driver"); // 	
			  conn=DriverManager.getConnection(url, user, pw);
			  System.out.println("db 연동성공: " + conn );
			
		}catch(ClassNotFoundException e) { 
			   e.printStackTrace();
		   }catch(SQLException e) {
			   e.printStackTrace();
		   }
	}
	
	public ArrayList<CarVO> getAllMember(){
		String sql = "select * from rentcar";
		ArrayList<CarVO>clist = new ArrayList<CarVO>();
		getConnection();
		
		String id;
		String pw;
		String name;
		String email;
		String gender;
		String hobby;
		
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				CarVO c = new CarVO();
				c.setNo(rs.getInt("no"));
				c.setName(rs.getString("name"));
				c.setCategory(rs.getInt("category"));
				c.setPrice(rs.getInt("price"));
				c.setUsepeople(rs.getInt("usepeople"));
				c.setCompany(rs.getString("company"));
				c.setImg(rs.getString("img"));
				c.setInfo(rs.getString("info"));
				
				clist.add(c);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return clist;
	}
		
	
	public void dbClose() {
		  try { 
		   if(rs!=null) rs.close();
		   if(ps!=null) ps.close();
		   if(conn!=null) conn.close();
		  }catch(Exception e) {
			  e.printStackTrace();
		  }
	}
	
}
