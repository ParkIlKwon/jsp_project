<%@page import="basic.boardDAO"%>
<%@page import="basic.boardDAO2"%>
<%@page import="basic.board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ include file= "header.jsp" %>
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
	<table border="1" class="table">
	<tr><td style="font-weight: bolder;">번호</td> <td class="left"><%=b.getId() %></td></tr>
	<tr><td style="font-weight: bolder">작성자</td><td><%=b.getName()%></td> <td>작성일</td><td><%=b.getDate() %></td></tr>
	<tr><td style="font-weight: bolder;">제목</td> <td><input class="w-100" type="text" name="title" value="<%=b.getTitle()%>"></td></tr>
	<tr><td style="font-weight: bolder;" id="tabletitle">내용</td>
	<td><textarea class="col-12 w-500 h-150" rows="10" cols="50" style="resize: none;" name="body" value><%=b.getBody()%>
	</textarea></td></tr>
	<tr><td colspan="4"><input type="submit" value="수정하기"/></td></tr>
	
	</table>
	</form>
</body>
</html>