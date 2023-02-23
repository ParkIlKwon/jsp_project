package basic;

import java.util.ArrayList;

public class boardDAO {
	
	int numbering = 3;
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
	
	public void addDummyBoardArray() {
		for (int i = 0; i < 10; i++) {
			int num = getNumber();
			String no = num + "";
			boardArray.add(new board(num,"작성자"+no,"2022-02-23", "제목"+no, "내용"+no));
		}
	}
	
	public int getNumber() {
		if(boardArray.size() == 0){
			numbering = 1;
		}
		else {
			numbering = boardArray.get(boardArray.size()-1).getId() + 1;
		}
		return numbering;
	}
	
	public void deleteBoard(int index) {
		boardArray.remove(index);
	}
	
	public board getSelectiveBoardArray(int index) {
		return boardArray.get(index);
	}
	
	public void fixBoardBody(int index, board b) {
		boardArray.set(index, b);
	}
	
	public void deleteAllBoard() {
		boardArray.clear();
	}
	
	public void addBoard(board b) {
		boardArray.add(b);
	}
}
