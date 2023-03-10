package kr.rentcar.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rentcar.test.car.CarDAO;

public class RentCarProController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int count = Integer.parseInt(request.getParameter("count"));
		HttpSession session = request.getSession();
		int qty = Integer.parseInt(request.getParameter("qty"));
		int num = CarDAO.getInstance().CountCar(count,qty);
		
		session.setAttribute("cnt", count);
		
		response.getWriter().print(num);
		return null;
	}
}
