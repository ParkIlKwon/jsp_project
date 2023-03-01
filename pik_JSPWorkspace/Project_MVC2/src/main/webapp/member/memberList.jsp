<%@page import="kr.basic.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ include file="header.jsp"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<%
	int info = (int)session.getAttribute("log");
	%>
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
	<td>${m.id}</td>
	<td>${m.pw}</td>
	<td>${m.name}</td>
	<td>${m.email}</td>
	<td>${m.gender}</td>
	<td>${m.hobby}</td>
	
	<%
	if(info != -1 && MemberDAO.getInstance().getSelectiveMember(info).getId() == "admin"){ 
	%>
	<td><input type="button" onclick=
	"location.href='${ctx}/memberDeleteController.do?index=${m.no}'" value="삭제하기"></td>

	<%-- <td><a href="${ctx}/memberContent.do?num=${m.num}">${m.id}</a></td> --%>
	<%} %>
	</tr>
	</c:forEach>
	</table>
</body>
</html>