<%@page import="basic.boardDAO"%>
<%@page import="basic.board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정하기 페이지~</title>
</head>
<body>
	<%
	int index = Integer.parseInt(request.getParameter("index"));
	board b = boardDAO.getinstance().getSelectiveBoardArray(index);
	%>
	<h1>게시글 수정하기</h1>
	<form action="_05_updateBoardpro.jsp?index=<%=index%>" method="post">
	<table border="1">
	<tr><td style="font-weight: bolder;">번호</td> <td colspan="3"><%=b.getId() %></td></tr>
	<tr><td style="font-weight: bolder">작성자</td><td><%=b.getName()%></td> <td>작성일</td><td><%=b.getDate() %></td></tr>
	<tr><td style="font-weight: bolder;">제목</td> <td colspan="3"><input type="text" name="title" value="<%=b.getTitle()%>"></td></tr>
	<tr><td style="font-weight: bolder;" id="tabletitle">내용</td><td><textarea rows="10" cols="30" name="body" value><%=b.getBody()%>
	</textarea></td></tr>
	<tr><td colspan="4"><input type="submit" value="수정하기"/></td></tr>
	
	</table>
	</form>
</body>
</html>