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
		String sql = "select * from member";
		ArrayList<Member>mlist = new ArrayList<Member>();
		getConnection();
		
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				Member m = new Member();
				m.setNo(rs.getInt("no"));
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
	
	public Member getSelectiveMember(int index) {
		ArrayList<Member> list = getAllMember();
		return list.get(index);
	}
	
	
	public void DeleteSelectiveMember(int index) {
		String sql = "delete from member where no = ?";
		
		getConnection();
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, index);
			int cnt = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
	}
	
	public void addMember(Member m) {
		String sql = "insert into member(id,pw,name,email,gender,hobby) values(?,?,?,?,?,?);";
		getConnection();
		int cnt = -1;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, m.getId());
			ps.setString(2, m.getPw());
			ps.setString(3, m.getName());
			ps.setString(4, m.getEmail());
			ps.setString(5, m.getGender());
			ps.setString(6, m.getHobby());
			cnt = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
	}
	
	public int CheckLog(String id, String pw, int pos) {
		ArrayList<Member>temp = getAllMember();
		
		for (int i = 0; i < temp.size(); i++) {
			if (pos == 1 && temp.get(i).getId().equals(id)) {
				return i;
			}else if (pos == 2 && temp.get(i).getId().equals(id) &&
					temp.get(i).getPw().equals(pw)) {
				return i;
			}
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
