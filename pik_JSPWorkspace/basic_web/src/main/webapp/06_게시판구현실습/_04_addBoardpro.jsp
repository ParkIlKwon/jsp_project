<%@page import="basic.boardDAO"%>
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
	int no = boardDAO.getinstance().getNumber();
	String title = request.getParameter("title");
	String body = request.getParameter("body");
	String date = "2022-02-23";
	
	board b = new board(no,"test",date,title,body);
	boardDAO.getinstance().addBoard(b);
	
	response.sendRedirect("_01_boardList.jsp");
	%>
	
</body>
</html>