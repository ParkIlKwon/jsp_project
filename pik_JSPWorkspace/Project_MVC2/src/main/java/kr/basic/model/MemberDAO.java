package kr.basic.model;

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
	
	private MemberDAO() {
	}
	static private MemberDAO instanse = new MemberDAO();
	static public MemberDAO getInstance() {
		return instanse;
	}
	
	private void getConnection(){
		String url = "jdbc:mysql://localhost:3306/testdb2?charaterEncoding=UTF-8&serverTimezone=UTC";
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
	
	public ArrayList<Member> getAllMember(){
		String sql = "select * from board";
		ArrayList<Member>mlist = new ArrayList<Member>();
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
				Member m = new Member();
				m.setId(rs.getString("id"));
				m.setId(rs.getString("pw"));
				m.setId(rs.getString("name"));
				m.setId(rs.getString("email"));
				m.setId(rs.getString("hender"));
				m.setId(rs.getString("hobby"));
				mlist.add(m);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return mlist;
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
