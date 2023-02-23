<%@page import="basic.boardDAO"%>
<%@page import="basic.board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
	<h1>게시판</h1>
	<h2><a href="_01_boardList.jsp">전체 게시글 확인하기</a></h2>
	<h2><a href="_02_addDummy.jsp">더미 게시글 추가하기</a></h2>
	<h2><a href="_06_deleteBoardpro.jsp">전체 게시글 삭제하기</a></h2>
	<h2><a href="_04_addBoard.jsp">게시글 추가하기</a></h2>
	<hr style="background-color: black; width: 100%">
	<h2><a <%if(boardDAO.getinstance().getAllBoardArray().size() != 0){%>href="_07_boardListPaging.jsp?sn=<%=1%>&en=<%=1%>"<%}else{%>
	        href="_00_main.jsp"<%} %>>페이징게시판</a></h2>
</body>
</html>