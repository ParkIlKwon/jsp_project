package kr.basic.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.basic.model.Member;
import kr.basic.model.MemberDAO;

/**
 * Servlet implementation class MemberAccountController
 */
@WebServlet("/MemberAccountController.do")
public class MemberAccountController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		
		String temp[] = request.getParameterValues("hobby");
		String hobby = "";
		for (int i = 0; i < temp.length; i++) {
			if(i != temp.length - 1) {
				hobby += temp[i] + ",";
			}
		}
		
		Member m = new Member();
		m.setId(id);
		m.setPw(pw);
		m.setName(name);
		m.setEmail(email);
		m.setGender(gender);
		m.setHobby(hobby);
		String ctx = request.getContextPath();
		
		MemberDAO.getInstance().addMember(m);
		response.sendRedirect(ctx+"/memberList.do");
		
		
		
	}
}
