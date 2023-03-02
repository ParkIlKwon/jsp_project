<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
	<header>
	<div class="row">
	<!-- with:50% padding top bottom 3px  -->
		<div class="w-50 py-3" onclick="location.href='01_13adminUserList.jsp'">회원목록</div>
		<%
		int log= (int)session.getAttribute("log");
		if(log ==-1){ %>
		<div class="w-25 py-3" onclick="location.href='03_11joinForm.jsp'">회원가입</div>
		<div class="w-25 py-3" onclick="location.href='03_21loginForm.jsp'">로그인</div>
		<%}else{ %>
			<div class="w-25 py-3" onclick="location.href=''">내정보</div>
		<div class="w-25 py-3" onclick="location.href=''">로그아웃</div>
		<%} %>
		</div>
	</header>
	
</body>
</html>