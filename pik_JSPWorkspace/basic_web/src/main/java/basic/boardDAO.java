package basic;

import java.util.ArrayList;

public class boardDAO {

	private ArrayList<board>boardArray;
	private boardDAO(){
		boardArray = new ArrayList<board>();
		init();
	}
	
	static private boardDAO instance = new boardDAO();
	static public boardDAO getinstance() {
		return instance;
	}
	
	void init() {
		int[] sNo = {1, 2, 3};
		String[] sWriter = {"작성자1", "작성자2", "작성자3"};
		String[] sRegDate = {"2022-02-01", "2022-02-02", "2022-02-03"};
		String[] sSubject = {"제목1", "제목2", "제목3"};
		String[] sContents = {"내용1", "내용2", "내용3"};
		for (int i = 0; i < sContents.length; i++) {
			boardArray.add(new board(sNo[i], sWriter[i], sRegDate[i], sSubject[i], sContents[i]));	
		}
	}
	
	public ArrayList<board> getAllBoardArray() {
		return boardArray;
	}
	
	
}
