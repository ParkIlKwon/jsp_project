package kr.rentcar.frontcontroller;


public class viewResolve {
	public static String makeView(String nextpage) {
		return "/WEB-INF/rentcar/"+nextpage+".jsp";
	}
}
