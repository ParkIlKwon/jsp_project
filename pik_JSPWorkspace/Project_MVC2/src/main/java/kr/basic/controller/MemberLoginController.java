package kr.basic.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.basic.model.MemberDAO;

/**
 * Servlet implementation class MemberLoginController
 */
@WebServlet("/MemberLoginController.do")
public class MemberLoginController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		HttpSession session = request.getSession();
		String ctx = request.getContextPath();
		
		int index =  MemberDAO.getInstance().CheckLog(id, pw, 2);
		if(index != -1) {
			session.setAttribute("log",index);
			response.sendRedirect(ctx+"/memberList.do");
		}else {
			response.sendRedirect("member/failurePage.jsp?ssf="+1);
		}
	}
}
