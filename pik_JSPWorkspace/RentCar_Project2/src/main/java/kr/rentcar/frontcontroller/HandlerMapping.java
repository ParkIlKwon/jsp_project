package kr.rentcar.frontcontroller;

import java.util.HashMap;
import kr.rentcar.controller.*;

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
		mapp.put("/ApplyRentCarController.do",new ApplyRentCarController());
		mapp.put("/carReserveCheck.do",new ReserveCheckController());
		mapp.put("/rentDelet.do",new RentDeleteController());
		mapp.put("/home.do",new HomeController());
		mapp.put("/upload.do",new uploadController());
		mapp.put("/uploadCarImg.do",new UploadCarImgController());
		mapp.put("/insertCar.do",new insertCarController());
		
		
	}
	public Controller getController(String k) {
		return mapp.get(k);
	}
}
