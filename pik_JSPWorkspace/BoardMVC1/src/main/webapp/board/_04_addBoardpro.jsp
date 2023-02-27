<%@page import="basic.boardDAO"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="basic.boardDAO2"%>
<%@page import="basic.board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
		Date today = new Date();
		String time1 = format1.format(today);
		
		int no = Integer.parseInt(request.getParameter("num"));
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		String date = time1;
		
		board b = new board(no,"test",date,title,body);
		int cnt = boardDAO.getinstance().addBoard(b);
		if(cnt>0) {	  
	    	response.sendRedirect("_01_boardList.jsp");
		}else {
	    	throw new ServletException("not insert");	    	
		}
	%>
	
</body>
</html>