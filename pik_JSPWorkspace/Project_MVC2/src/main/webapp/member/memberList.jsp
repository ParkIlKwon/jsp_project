<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ include file="header.jsp"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>회원목록</h1>
	<table class="table">
	  <tr>
    <td>아이디</td>
    <td>비밀번호</td>
    <td>이름</td>
    <td>이메일</td>
    <td>성별</td>
    <td>취미</td>
    <td>삭제</td>
  </tr>
	
	<c:forEach var="m" items="${list}">
	<tr>
	<td><a href="${ctx}/memberContent.do?num=${m.num}">${m.id}</a></td>

	</tr>
	</c:forEach>
	</table>
</body>
</html>