package kr.rentcar.frontcontroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.rentcar.controller.Controller;

public class uploadController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		if(request.getParameter("id") == null) {
			session.setAttribute("cmenu","FileUpload.jsp");
		}
		
		
		return "Main";
		
	}
}
