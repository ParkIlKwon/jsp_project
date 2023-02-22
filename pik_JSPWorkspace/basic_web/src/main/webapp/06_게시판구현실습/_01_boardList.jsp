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
<%
	ArrayList<board>boardArr = boardDAO.getinstance().getAllBoardArray();
%>
<body>
	<h2>전체 게시글 수 : <%=boardArr.size()%>  개</h2>
	<table border="1">
	<tr style="font-weight: bolder;"> <td>번호</td> <td>작성자</td>
	<td>작성일</td> <td>제목</td> <td>내용</td> <td> 삭제 </td> </tr>
	<%
	for(int i = 0 ; i < boardArr.size();i++){
	%>
	<tr>
		<td><%=boardArr.get(i).getId()%></td>
		<td><%=boardArr.get(i).getName()%></td>
		<td><%=boardArr.get(i).getDate()%></td>
		<td><%=boardArr.get(i).getTitle()%></td>
		<td><%=boardArr.get(i).getBody()%></td>
		<td><input type="button" value="삭제"></td>
	</tr>
	<%}%>
	</table>
		<input type="button" value="뒤로가기" id="homebtn">
</body>
</html>