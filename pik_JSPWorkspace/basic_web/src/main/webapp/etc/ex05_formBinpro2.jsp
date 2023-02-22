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
	int num = Integer.parseInt(request.getParameter("rnum"));
	int result = Integer.parseInt(request.getParameter("result"));
	%>

<h1>form페이지2</h1>
<h1>넘버<%= num%></h1>
<h1>리저트<%= result%></h1>
</body>
</html>