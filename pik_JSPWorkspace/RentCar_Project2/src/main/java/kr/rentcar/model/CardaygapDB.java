package kr.rentcar.model;


public class CardaygapDB {
	
	private int carno;
	private int daygap;
	private int id;
	
	public CardaygapDB(){}
	public CardaygapDB(int carno, int daygap, int id) {
		this.carno = carno;
		this.daygap = daygap;
		this.id = id;
	}
	public int getCarno() {
		return carno;
	}
	public void setCarno(int carno) {
		this.carno = carno;
	}
	public int getDaygap() {
		return daygap;
	}
	public void setDaygap(int daygap) {
		this.daygap = daygap;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	
}
