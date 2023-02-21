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
	String names [] = {"가","나","다"};
	int scores [] = {78,89,67};
	
	session.setAttribute("names", names);
	session.setAttribute("scores", scores);
	%>
	
	<a href = "session02.jsp">다음페이지</a>
</body>
</html>