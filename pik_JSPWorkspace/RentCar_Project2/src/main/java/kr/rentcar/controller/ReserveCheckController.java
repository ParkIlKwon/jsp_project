package kr.rentcar.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rentcar.test.car.CarDAO;
import com.rentcar.test.car.CarVO;

import kr.rentcar.model.CarViewDAO;
import kr.rentcar.model.CarViewVO;



public class ReserveCheckController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("cmenu","ReserveCheck.jsp");
		String id = (String)session.getAttribute("log");
		ArrayList<CarVO>clist = CarDAO.getInstance().getAllCars();
				
		ArrayList<CarViewVO>list = 
		CarViewDAO.getInstance().getReserveCar(id,clist);
		
		session.setAttribute("checkCarLIst",list);
		return "Main";
	}

}
