<%@page import="basic.boardDAO"%>
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
	int cnt = boardDAO.getinstance().deleteAllBoard();
	
	if(cnt < 0){
		%>
		<script>
		alert("삭제 실패 뭔가가 문제 있슴..");
	</script>
	<%}response.sendRedirect("_01_boardList.jsp");%>
	

</body>
</html>