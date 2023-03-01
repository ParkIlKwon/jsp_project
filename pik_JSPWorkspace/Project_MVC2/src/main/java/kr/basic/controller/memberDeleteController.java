package kr.basic.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.basic.model.MemberDAO;


@WebServlet("/memberDeleteController.do")
public class memberDeleteController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ctx = request.getContextPath();
		int no = Integer.parseInt(request.getParameter("index"));
		MemberDAO.getInstance().DeleteSelectiveMember(no);
		
		response.sendRedirect(ctx+"/memberContent.do");
	}
}
