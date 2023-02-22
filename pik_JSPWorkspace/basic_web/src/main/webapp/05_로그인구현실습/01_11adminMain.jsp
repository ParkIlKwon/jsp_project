<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="NewFile.css">
<title>Insert title here</title>
</head>
<body>
	<h1>관리자 메뉴</h1>
	<a href="02_main.jsp?<%session.setAttribute("log", -1); %>"> 로그아웃 </a>
	<a href="01_13adminUserList.jsp"> 회원관리 </a>
</body>
</html>