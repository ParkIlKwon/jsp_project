package kr.basic.frontController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.basic.controller.Controller;

@WebServlet("*.do")
public class MemberFrontController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String url = request.getRequestURI();
		String ctx = request.getContextPath();
		
		String cmd = url.substring(ctx.length());
		
		System.out.println("url : "+url);
		System.out.println("ctx : "+ctx);
		System.out.println("cmd : "+cmd);
		
		HandlerMapping handlermap = new HandlerMapping();
		Controller con = handlermap.getController(cmd);
		
		String nextPage = con.requestHandler(request, response);
		System.out.println("nextPage : "+nextPage);
		
		if(nextPage!=null) {
			if(nextPage.indexOf("redirect:")!=-1) {
				//            redirect:/MemberMVC3/memberList.do
				response.sendRedirect(nextPage.split(":")[1]);
			}else {
				RequestDispatcher rd=request.getRequestDispatcher(viewResolve.makeView(nextPage)); // forward
				rd.forward(request, response);
			}
		}		
	}
}



