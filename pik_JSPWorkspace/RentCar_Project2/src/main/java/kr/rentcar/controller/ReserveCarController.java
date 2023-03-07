package kr.rentcar.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rentcar.test.car.CarDAO;

public class ReserveCarController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("cmenu", "ReserveCarMain.jsp");
		session.setAttribute("clist", CarDAO.getInstance().getBestCars());
		
		if(request.getParameter("option") != null) {
			int option = Integer.parseInt(request.getParameter("option"));
			if(option == 1) {
				session.setAttribute("clist", CarDAO.getInstance().getbyCartype(1));
			}else if (option == 2) {
				session.setAttribute("clist", CarDAO.getInstance().getbyCartype(2));
			}else if (option == 3) {
				session.setAttribute("clist", CarDAO.getInstance().getbyCartype(3));
			}
		}
		
		return "Main";
	}

}
