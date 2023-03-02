package kr.basic.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.basic.model.Member;
import kr.basic.model.MemberDAO;

public class MemberAccountController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		if(request.getParameter("id") == null) {
			return "MemberAccount";
		}
		
		String id =  request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String tmp[] = request.getParameterValues("hobby");
		String hobby = "";
		
		for (int i = 0; i < tmp.length; i++) {
			hobby += tmp[i];
			if(i != tmp.length-1) {
				hobby +=  ",";
			}
		}
		System.out.println(hobby);
		
		Member m = new Member(id,pw,name,email,gender,hobby);
		int check =  MemberDAO.getInstance().addMember(m);
		System.out.println(check);
		String ctx = request.getContextPath();
		return "redirect:"+ ctx +"/MemberList.do";
	}

	
}
