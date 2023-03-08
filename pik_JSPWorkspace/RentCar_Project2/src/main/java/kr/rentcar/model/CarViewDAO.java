package kr.rentcar.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.rentcar.test.car.CarDAO;
import com.rentcar.test.car.CarVO;
import com.rentcar.test.member.MemberDAO;

public class CarViewDAO {
	Connection conn;
	PreparedStatement ps;
	ResultSet rs; 
	
	private CarViewDAO() {}
	static private CarViewDAO instanse = new CarViewDAO();
	static public CarViewDAO getInstance() {
		return instanse;
	}
	
	private void getConnection(){
		String url = "jdbc:mysql://localhost:3306/rentcardb?charaterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
		String user = "root";
		String pw = "root";
		
		try {
			 Class.forName("com.mysql.cj.jdbc.Driver"); // 	
			  conn=DriverManager.getConnection(url, user, pw);
			
		}catch(ClassNotFoundException e) { 
			   e.printStackTrace();
		   }catch(SQLException e) {
			   e.printStackTrace();
		   }
	}
	
	public ArrayList<CarViewVO>getReserveCar(String id, ArrayList<CarVO>clist) {
		ArrayList<CarViewVO>list = new ArrayList<CarViewVO>();
		
		String sql = "SELECT * FROM carreserve where id = ?";
		getConnection();
		System.out.println("test==============");
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				CarVO carInfo = new CarVO();
				
				int Carno = rs.getInt("no");
				for (int i = 0; i < clist.size(); i++) {
					if(clist.get(i).getNo() == Carno) {
						carInfo = clist.get(i);
					}
				}
				
				CarViewVO temp = new CarViewVO();
				temp.setNo(rs.getInt("reserve_seq"));
				temp.setName(carInfo.getName());
				temp.setPrice(carInfo.getPrice());
				temp.setImg(carInfo.getImg());
				
				temp.setQty(rs.getInt("qty"));
				temp.setDday(rs.getInt("dday"));
				temp.setRday(rs.getString("rday"));
				
				temp.setUsein(rs.getInt("usein"));
				temp.setUsenavi(rs.getInt("usewifi"));
				temp.setUseseat(rs.getInt("usenavi"));
				temp.setUsewifi(rs.getInt("useseat"));
				
				list.add(temp);
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return list;
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
