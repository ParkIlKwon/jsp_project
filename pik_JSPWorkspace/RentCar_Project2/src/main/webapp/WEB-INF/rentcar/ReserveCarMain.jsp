<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
		<h3 align="center">최신형 자동차</h3>
		<table>
		<c:forEach var = "c" items="${clist}">
			<img alt="" src="image/${c.img}" width="300" height="220">
		</c:forEach>
		
		</table>
</body>
</html>