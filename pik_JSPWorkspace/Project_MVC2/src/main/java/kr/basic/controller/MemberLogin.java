package kr.basic.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.basic.model.MemberDAO;

public class MemberLogin implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String ctx=request.getContextPath();
		if(request.getParameter("id") == null) {
			return 	"memberLogin";
		}
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		int checkLog = MemberDAO.getInstance().checkLog(id, pw, 1);
		if(checkLog != -1) {
			HttpSession session = request.getSession();
			session.setAttribute("log",checkLog);
			return "redirect:" + ctx + "/memberList.do";
		}
		return 	"memberLogin";
		
	}
}
