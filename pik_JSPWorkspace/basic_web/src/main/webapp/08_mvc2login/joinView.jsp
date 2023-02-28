<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
	<h1>가입정보 확인.</h1>
	
		<table border="1">
				<tr>
					<th>아이디</th>
					<td>${ Member.id }</td>
				</tr>
				<tr>
					<th>패스워드</th>
					<td>${ Member.pw }</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>${ Member.name }</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>${ Member.email }</td>
				</tr>
				<tr>
					<th>취미</th>
					<td>${ Member.hobby }</td>
				</tr>
		</table>

	</div>


</body>
</html>