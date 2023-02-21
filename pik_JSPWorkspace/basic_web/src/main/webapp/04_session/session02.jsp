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
	String names[] = (String[])session.getAttribute("names");
	int scores[]= (int[])session.getAttribute("scores");
	%>
	<table>
	<tr><th>이름</th><th>점수</th></tr>
	<%for(int i =0 ; i < names.length ; i++){ %>
	<tr><td><%= names[i] %></td><td><%= scores[i] %></td></tr>
	<%} %>
	</table>
</body>
</html>