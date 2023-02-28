<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${ctx}/css/style.css">
</head>
<body>
	<header>
		<div class="row h-40">
		<div class="col-3" onclick="location.href='memberList.jsp'">회원목록</div>
		<div class="col-3" onclick="location.href='memberAcount.jsp'">회원가입</div>
		
		<div class="col-3">로그인</div>
		<div class="col-3">로그아웃</div>
		
		</div>
	</header>
	
	
	
</body>
</html>