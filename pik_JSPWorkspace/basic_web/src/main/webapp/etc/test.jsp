<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    LocalDate now = LocalDate.now();
	System.out.println(now);
	String today = now.format(DateTimeFormatter.ofPattern("yyyy년mm월dd일"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>test.jsp</h1>
	<h1>오늘은<%= today %>아여</h1>
</body>
</html>