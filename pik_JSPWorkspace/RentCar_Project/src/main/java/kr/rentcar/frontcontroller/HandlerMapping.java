package kr.rentcar.frontcontroller;

import java.util.HashMap;

import kr.rentcar.controller.Controller;
import kr.rentcar.controller.ReserveCarController;
import kr.rentcar.controller.memberLogin;
import kr.rentcar.controller.memberLogout;


public class HandlerMapping {
	private HashMap<String, Controller>mapp;
	public HandlerMapping() {
		mapp = new HashMap<String, Controller>();
		mapp.put("/memberLogout.do",new memberLogout());
		mapp.put("/memberLogin.do",new memberLogin());
		mapp.put("/carReserveMain.do",new ReserveCarController());
	}
	public Controller getController(String k) {
		return mapp.get(k);
	}
}
