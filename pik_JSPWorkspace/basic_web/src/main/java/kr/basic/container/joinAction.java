package kr.basic.container;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import basic.Member;

/**
 * Servlet implementation class joinAction
 */
@WebServlet("/joinPro.do")
public class joinAction extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		String url = request.getRequestURI();
		String ctx = request.getContextPath();
		
		String harr[] = request.getParameterValues("hobby");
		String hobby = "";
		
		for(int i=0; i<harr.length; i++) {
			hobby += harr[i];
			if(i != harr.length - 1) {
				hobby += ",";
			}
		}
		;
		Member m = 
		new Member(id,pw,name,email,hobby);
		
		request.setAttribute("Member", m);
		
		RequestDispatcher dis = request.getRequestDispatcher("/08_mvc2login/joinView.jsp");
		dis.forward(request, response);
		
		
		
		
	}
	
}
