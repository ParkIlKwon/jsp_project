package kr.basic.frontController;

import java.util.HashMap;

import kr.basic.controller.Controller;
import kr.basic.controller.MemberAccountController;
import kr.basic.controller.MemberDeleteController;
import kr.basic.controller.MemberListController;
import kr.basic.controller.MemberLogin;

public class HandlerMapping {
	private HashMap<String, Controller>mapp;
	public HandlerMapping() {
		mapp = new HashMap<String, Controller>();
		mapp.put("/memberList.do",new MemberListController());
		mapp.put("/memberAccount.do",new MemberAccountController());
		mapp.put("/memberDelete.do",new MemberDeleteController());
		mapp.put("/memberLogin.do", new MemberLogin());
	}
	public Controller getController(String k) {
		return mapp.get(k);
	}
}
