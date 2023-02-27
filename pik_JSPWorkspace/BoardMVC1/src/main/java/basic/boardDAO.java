package basic;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class boardDAO {
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	
	int numbering = 3;
	
	private boardDAO(){
	
	}
	
	static private boardDAO instance = new boardDAO();
	static public boardDAO getinstance() {
		return instance;
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
	
	
	public ArrayList<board> getAllBoardArray() {
		String sql = "select * from board";
		ArrayList<board>boardArray = new ArrayList<board>();
		getConnection();
		try {
			ps = conn.prepareStatement(sql); //명령문 준비
			rs = ps.executeQuery(); // 명령문 실행 (ctrl + enter) .
			while (rs.next()) {
				board b = new board();
				b.setId(rs.getInt("no"));
				b.setName(rs.getString("writer"));
				b.setTitle(rs.getString("subject"));
				b.setBody(rs.getString("contents"));
				b.setDate(rs.getString("regDate"));
				boardArray.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose(); //db 연동해제	
		}
		return boardArray;
	}
	
	public void addDummyBoardArray() {
		for (int i = 0; i < 10; i++) {
			int num = getNumber();
			String no = num + "";
			board b = new board(num,"작성자"+no,"2022-02-23", "제목"+no, "내용"+no);
			addBoard(b);
		}
	}
	
	public int addBoard(board b) {
		String SQL="insert into board(writer,subject,contents,regDate) values(?,?,?,?)"; 
		getConnection();
		int cnt = -1;
	
		try {
			ps = conn.prepareStatement(SQL);
		
			ps.setString(1, b.getName());
			ps.setString(2, b.getTitle());
			ps.setString(3, b.getBody());
			ps.setString(4, b.getDate());
			
			cnt = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
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
	
//	void init() {
//		int[] sNo = {1, 2, 3};
//		String[] sWriter = {"작성자1", "작성자2", "작성자3"};
//		String[] sRegDate = {"2022-02-01", "2022-02-02", "2022-02-03"};
//		String[] sSubject = {"제목1", "제목2", "제목3"};
//		String[] sContents = {"내용1", "내용2", "내용3"};
//		for (int i = 0; i < sContents.length; i++) {
//			boardArray.add(new board(sNo[i], sWriter[i], sRegDate[i], sSubject[i], sContents[i]));	
//		}
//	}
//	


	public int getNumber() {
		int max = 0 ;
		String sql = "select max(no) from board";
		getConnection();
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()){
				max = rs.getInt(1); //천번째 줄의 첫번째 컬럼값
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return max +1;
	}
//	
	public int deleteBoard(int index) {
		String SQL="delete from board where no=?";
		//delete from board where no = 6;
		getConnection();
		int cnt = -1; 
		try {
			ps = conn.prepareStatement(SQL);
			ps.setInt(1,index);
			cnt = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}

	public board getSelectiveBoardArray(int index) {
		return getAllBoardArray().get(index);
	}
	
	public int fixBoardBody(board b) {
		//subject,contents
		String sql = "update board set subject=? , contents=? where no = ?";
		getConnection();
		int cnt = -1;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, b.getTitle());
			ps.setString(2, b.getBody());
			ps.setInt(3, b.getId());
			
			cnt = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt ;
	}
//	
	public int deleteAllBoard() {
		String sql = "delete from board;";
		getConnection();
		int cnt = -1;
		try {
			ps = conn.prepareStatement(sql);
			cnt = ps.executeUpdate();
		} catch (Exception e) {
			dbClose();
		}
		return cnt;
	}
//	

}
