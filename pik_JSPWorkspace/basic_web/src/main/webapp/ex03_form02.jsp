<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	/*
	form�������� ���� �޾ƿ��� ��ü =>request �޾Ƽ�����
	*/
	int num1 = Integer.parseInt(request.getParameter("su1"));
	int num2 = Integer.parseInt(request.getParameter("su2"));
	
	%>
	<h1> num1 = <%= num1 %></h1>
	<h1> num2 = <%= num2 %></h1>
	<h1> �� = <%= num1 + num2 %></h1>
</body>
</html>