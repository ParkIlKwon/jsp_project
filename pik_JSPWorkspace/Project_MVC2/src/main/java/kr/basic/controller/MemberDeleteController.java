package kr.basic.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.basic.model.MemberDAO;

public class MemberDeleteController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		MemberDAO.getInstance().deleteMember(request.getParameter("id"));
		String ctx=request.getContextPath();
		System.out.println("test= " + ctx);
		return "redirect:"+"/memberList.do";
	}
	
}
