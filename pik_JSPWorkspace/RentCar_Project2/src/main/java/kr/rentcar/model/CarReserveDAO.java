package kr.rentcar.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.rentcar.test.member.MemberDAO;
import com.rentcar.test.member.MemberVO;

public class CarReserveDAO {
	Connection conn;
	PreparedStatement ps;
	ResultSet rs; 
	
	private CarReserveDAO() {}
	static private CarReserveDAO instanse = new CarReserveDAO();
	static public CarReserveDAO getInstance() {
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
	
	public ArrayList<CarReserveVO> getAllcarreserve(){
		String sql = "select * from carreserve";
		ArrayList<CarReserveVO>list = new ArrayList<CarReserveVO>();
		getConnection();
		
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				CarReserveVO m = new CarReserveVO();
				m.setReserve_seq(rs.getInt("reserve_seq"));
				m.setNo(rs.getInt("no"));
				m.setId(rs.getString("id"));
				m.setQty(rs.getInt("qty"));
				m.setDday(rs.getInt("dday"));
				m.setRday(rs.getString("rday"));
				m.setUsein(rs.getInt("usein"));
				m.setUsewifi(rs.getInt("usewifi"));
				m.setUsenavi(rs.getInt("usenavi"));
				m.setUseseat(rs.getInt("useseat"));	
				
				list.add(m);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return list;
	}
	
	
	public void setReserveCar(CarReserveVO t,int numkey) {
		String sql = "insert into carreserve(reserve_seq,no,id,qty,dday,rday,usein,usewifi,usenavi,useseat) values(?,?,?,?,?,?,?,?,?,?)";
		getConnection();
		try {
			
			ps = conn.prepareStatement(sql);
			ps.setInt(1,numkey);
			ps.setInt(2,t.getNo());
			ps.setString(3,t.getId());
			ps.setInt(4,t.getQty());
			ps.setInt(5,t.getDday());
			ps.setString(6,t.getRday());
			ps.setInt(7,t.getUseseat());
			ps.setInt(8,t.getUsewifi());
			ps.setInt(9,t.getUsenavi());
			ps.setInt(10,t.getUseseat());
			
			ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
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

	public int getQTY(int no) {
		String sql = "select * from carreserve where reserve_seq=?";
		int n = 0;
		getConnection();
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, no);
			rs = ps.executeQuery();
			while (rs.next()) {
				n = rs.getInt("qty");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return n;
	}
	
	public void cosumeCar(int no,int cnt) {
		
	}
	
	public void refillCar(int no,int cnt) {
		
	}
	
	public void deletelist(int no) {
		String sql = "delete from carreserve where reserve_seq=?";
		getConnection();
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, no);
			ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		
	}
	

}
