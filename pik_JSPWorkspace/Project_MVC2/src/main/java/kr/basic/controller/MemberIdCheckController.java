package kr.basic.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.basic.model.MemberDAO;

public class MemberIdCheckController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("id");
		System.out.println(id);
		String massage = MemberDAO.getInstance().
				isValidCheck(id)?
						"notvalid" : "valid" ;
		
		response.getWriter().print(massage);
		return null;
	}
	
}
