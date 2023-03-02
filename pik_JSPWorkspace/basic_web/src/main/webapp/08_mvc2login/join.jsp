<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"   %>

<c:set var = "contextPath" value="
${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
	<h1>회원가입 폼</h1>
	<form action="${contextPath}/joinPro.do" method="post">
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id"></td>
			</tr>
			
			<tr>
				<th>패스워드</th>
				<td><input type="text" name="pw"></td>
			</tr>
			
			<tr>
				<th>이름</th>
				<td><input type="text" name="name"></td>
			</tr>
			
			<tr>
				<th>이메일</th>
				<td><input type="text" name="email"></td>
			</tr>
			
			<tr>
			<th>취미</th>
			<td>
			<input type="checkbox" name="hobby" value="농구"/>농구
			<input type="checkbox" name="hobby" value="야구"/>야구
			<input type="checkbox" name="hobby" value="축구"/>축구
			</td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
				<input type="submit" value="제출"/>	
				</td>
			</tr>
			
		</table>
	</form>
	</div>


</body>
</html>