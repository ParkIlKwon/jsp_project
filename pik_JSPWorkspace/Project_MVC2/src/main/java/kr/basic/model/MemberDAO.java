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
		String url = "jdbc:mysql://localhost:3306/testdb2?charaterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
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
		String sql = "select * from member";
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
				m.setPw(rs.getString("pw"));
				m.setName(rs.getString("name"));
				m.setEmail(rs.getString("email"));
				m.setGender(rs.getString("gender"));
				m.setHobby(rs.getString("hobby"));
				mlist.add(m);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return mlist;
	}
	
	public int addMember(Member m) {
		String sql = "insert into member(id,pw,name,email,gender,hobby) values(?,?,?,?,?,?)";
		getConnection();
		int check = -1;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, m.getId());
			ps.setString(2, m.getPw());
			ps.setString(3, m.getName());
			ps.setString(4, m.getEmail());
			ps.setString(5, m.getGender());
			ps.setString(6, m.getHobby());
			
			check =  ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return check;
	}
	
	public void deleteMember(String id) {
		String sql = "delete from member where id=?";
		getConnection();
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		
	}
	
	public boolean isValidCheck(String id) {
		String sql = "select * from member where id = ?";
		getConnection();
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeQuery();
			
			return rs.next();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}   
	
	public int checkLog(String id, String pw, int p) {
		ArrayList<Member> list = getAllMember();
		if( p == 1) {
			for (int i = 0; i < list.size(); i++) {
				if(list.get(i).getId().equals(id) &&
						list.get(i).getPw().equals(pw)) {
				return i;
				}
			}
		}else {
			
			
		}
		return -1;
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
