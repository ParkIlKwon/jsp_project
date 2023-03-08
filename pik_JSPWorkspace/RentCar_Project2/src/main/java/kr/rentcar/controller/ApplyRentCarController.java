package kr.rentcar.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rentcar.test.car.CarVO;

import kr.rentcar.model.CarReserveDAO;
import kr.rentcar.model.CarReserveVO;
import kr.rentcar.model.CarViewVO;

public class ApplyRentCarController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		session.setAttribute("cmenu","center.jsp");
		
		ArrayList<CarVO>clist = (ArrayList<CarVO>) session.getAttribute("scar");
		String log = request.getParameter("log");
		int asset = Integer.parseInt(request.getParameter("asset"));
		int nav = Integer.parseInt(request.getParameter("nav"));
		int wifi = Integer.parseInt(request.getParameter("wifi"));
		int baby = Integer.parseInt(request.getParameter("baby"));
		String date = request.getParameter("date");
		int number = Integer.parseInt(request.getParameter("number"));
		int cnt = Integer.parseInt(request.getParameter("cnt"));
		ArrayList<CarReserveVO>crlist =  CarReserveDAO.getInstance().getAllcarreserve();
		
		int numkey = crlist.size() == 0 ? 1 : crlist.get(crlist.size()-1).getReserve_seq()+1;
		
		CarReserveVO temp = new CarReserveVO(clist.get(0).getNo(),log,cnt,
				number,date,asset,wifi,nav,baby);
		CarReserveDAO.getInstance().cosumeCar(numkey, cnt);
		CarReserveDAO.getInstance().setReserveCar(temp,numkey);
		
		return "Main";
	}
}
