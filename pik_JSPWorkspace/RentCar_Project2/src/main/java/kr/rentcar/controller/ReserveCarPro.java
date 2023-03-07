package kr.rentcar.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rentcar.test.car.CarDAO;

public class ReserveCarPro implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		int scar = Integer.parseInt(request.getParameter("select"));
		session.setAttribute("scar",CarDAO.getInstance().findCar(scar));    
		session.setAttribute("cmenu", "ReserveCarPro.jsp");
		return "Main";
	}

}
