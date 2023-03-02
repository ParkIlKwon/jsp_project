package kr.basic.frontController;

public class viewResolve {
	public static String makeView(String nextpage) {
		return "WEB-INF/member/"+nextpage+".jsp";
	}
}
