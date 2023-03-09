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
		int QTA = Integer.parseInt(request.getParameter("QTA"));
		int number = Integer.parseInt(request.getParameter("no"));
		int seq = Integer.parseInt(request.getParameter("seq"));
		
		int refill= CarReserveDAO.getInstance().refillCar(number, QTA);
		CarReserveDAO.getInstance().updateCarQTY(number, refill);
		CarReserveDAO.getInstance().deletelist(seq);
		
		return "Main";
	}
}
