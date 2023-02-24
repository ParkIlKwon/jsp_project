<%@page import="basic.boardDAO"%>
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
	int stat = Integer.parseInt(request.getParameter("stat"));
	int index = Integer.parseInt(request.getParameter("index"));
	int sn = Integer.parseInt(request.getParameter("sn"));
	int en = Integer.parseInt(request.getParameter("en"));
	
	boardDAO.getinstance().deleteBoard(index);
	if(stat == 2){	
		response.sendRedirect("_07_boardListPaging.jsp?sn="+sn+"&en="+en);	
	}else{
	response.sendRedirect("_01_boardList.jsp");	
	}
	%>
</body>
</html>