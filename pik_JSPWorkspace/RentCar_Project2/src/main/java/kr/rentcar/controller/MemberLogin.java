package kr.rentcar.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rentcar.test.member.MemberDAO;

public class MemberLogin implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(request.getParameter("id") == null) {
			session.setAttribute("cmenu", "MemberLogin.jsp");
			return "Main";
		}else {
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			
			if(!MemberDAO.getInstance().idcheck(id, pw).equals("")) {
			session.setAttribute("cmenu", "center.jsp");
			session.setAttribute("log", id);
			int num = 1;
			response.getWriter().print(num);
			}
			
			return null;
		}
	}
}
