package kr.rentcar.frontcontroller;

import java.util.HashMap;

import kr.rentcar.controller.Controller;
import kr.rentcar.controller.MainController;
import kr.rentcar.controller.ReserveCarController;
import kr.rentcar.controller.ReserveCarPro;
import kr.rentcar.controller.MemberLogin;
import kr.rentcar.controller.MemberLogout;
import kr.rentcar.controller.RentCarProController;


public class HandlerMapping {
	private HashMap<String, Controller>mapp;
	public HandlerMapping() {
		mapp = new HashMap<String, Controller>();
		mapp.put("/main.do",new MainController());
		mapp.put("/memberLogout.do",new MemberLogout());
		mapp.put("/memberLogin.do",new MemberLogin());
		mapp.put("/carReserveMain.do",new ReserveCarController());
		mapp.put("/ReserveCarPro.do",new ReserveCarPro());
		mapp.put("/RentCarProController.do",new RentCarProController());
	}
	public Controller getController(String k) {
		return mapp.get(k);
	}
}
