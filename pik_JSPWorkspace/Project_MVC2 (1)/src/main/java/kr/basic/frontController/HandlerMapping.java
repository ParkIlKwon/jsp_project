package kr.basic.frontController;

import java.util.HashMap;

import kr.basic.controller.Controller;
import kr.basic.controller.MemberAccountController;
import kr.basic.controller.MemberDelete;
import kr.basic.controller.MemberListController;

public class HandlerMapping {
	private HashMap<String, Controller>mapp;
	public HandlerMapping() {
		mapp = new HashMap<String, Controller>();
		mapp.put("/MemberList.do",new MemberListController());
		mapp.put("/MemberAccount.do",new MemberAccountController());
		mapp.put("/memberDelete.do",new MemberDelete());
	}
	public Controller getController(String k) {
		return mapp.get(k);
	}
}
