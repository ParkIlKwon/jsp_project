<%@page import="basic.boardDAO2"%>
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
	boardDAO2.getinstance().addDummyBoardArray();
		response.sendRedirect("_00_main.jsp");
	%>
		
</body>
</html>