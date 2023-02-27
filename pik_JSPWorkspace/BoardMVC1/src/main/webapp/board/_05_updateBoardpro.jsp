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
		int index = Integer.parseInt(request.getParameter("index"));
		board t = boardDAO2.getinstance().getSelectiveBoardArray(index);
		
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		
		board b = new board(t.getId(),t.getName(),t.getDate(),title,body);
		boardDAO2.getinstance().fixBoardBody(index, b);
		
		response.sendRedirect("_01_boardList.jsp");
	%>
</body>
</html>