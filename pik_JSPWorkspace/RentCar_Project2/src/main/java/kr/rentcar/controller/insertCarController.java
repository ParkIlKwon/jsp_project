package kr.rentcar.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rentcar.test.car.CarVO;

import kr.rentcar.model.CarReserveDAO;

public class insertCarController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("cmenu", "center.jsp");
		String name = request.getParameter("car_name");
	    String info = request.getParameter("car_info");
	    String campany = request.getParameter("company");
	    String img = request.getParameter("img");
	    int category = Integer.parseInt(request.getParameter("category"));
	    int price = Integer.parseInt(request.getParameter("price"));
		int maxNum = CarReserveDAO.getInstance().getMaxNum();
	    System.out.println(maxNum);
		CarVO car = new CarVO(maxNum,name,category,price,4,campany,img,info);
		CarReserveDAO.getInstance().addCar(car);                                       
		return "Main";
	}

}
