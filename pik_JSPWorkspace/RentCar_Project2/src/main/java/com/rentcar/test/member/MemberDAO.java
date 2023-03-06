package com.rentcar.test.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {

	Connection conn;
	PreparedStatement ps;
	ResultSet rs; 
	
	private MemberDAO () {}
	static private MemberDAO instanse = new MemberDAO();
	static public MemberDAO getInstance() {
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
	
	public ArrayList<MemberVO> getAllMember(){
		String sql = "select * from member";
		ArrayList<MemberVO>mlist = new ArrayList<MemberVO>();
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
				MemberVO m = new MemberVO();
				m.setId(rs.getString("id"));
				m.setPw1(rs.getString("pw1"));
				
				mlist.add(m);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return mlist;
	}
	
	public String idcheck(String id, String pw) {
		for (MemberVO m : getAllMember()) {
			if(m.getId().equals(id) &&
					m.getPw1().equals(pw)) {
				return m.getId();
			}
		}
		return "";
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
