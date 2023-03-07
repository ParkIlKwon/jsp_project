package kr.rentcar.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rentcar.test.car.CarDAO;

public class RentCarProController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int count = Integer.parseInt(request.getParameter("count"));
		
		int num = CarDAO.getInstance().CountCar(count);
		
		response.getWriter().print(num);
		return null;
	}
}
