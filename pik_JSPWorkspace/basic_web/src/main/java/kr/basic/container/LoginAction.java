package kr.basic.container;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/login.do")
public class LoginAction extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	request.setCharacterEncoding("utf-8"); 
	
	String dbid = "qwer";
	String dbpw = "1234";
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String msg = "";
	if(id.equals(dbid) && pw.equals(dbpw)){
		msg = "로그인성공";
	}else{
		msg = "로그인실패";
	}
	}

	
	
	//상속 ==> 부모메서드를 오버라이딩 
	
	
}
