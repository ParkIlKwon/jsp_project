package kr.rentcar.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.rentcar.model.CarReserveDAO;

public class RentDeleteController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("cmenu","ReserveCheck.jsp");
		int number = Integer.parseInt(request.getParameter("no"));
		System.out.println(CarReserveDAO.getInstance().getQTY(number));
		
		CarReserveDAO.getInstance().deletelist(number);
		
		return "Main";
	}

}
