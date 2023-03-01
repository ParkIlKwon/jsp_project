<%@page import="kr.basic.model.MemberDAO"%>
<%@page import="kr.basic.model.Member"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="${ctx}/css/tableStyle.css">
<body>
	<h1>회원가입 폼</h1>
	<form action="${ctx}/MemberAccountController.do" method="post">
	<table class="table" border="1">

	<tr><th>아이디</th><td><input class="col-9" type="text" name="id">
	<input style="margin-left: 3px" class="col-2" type="button" value="중복체크"></td></tr>
	<tr><th>패스워드</th><td><input class="col-10" type="text" name="pw"></td></tr>
	<tr><th>이름</th><td><input class="col-10" type="text" name="name"></td></tr>
	<tr><th>Email</th><td><input class="col-10" type="email" name="email"></td></tr>
	<tr><th>성별</th><td><input type="radio" value="남성" name="gender" checked/>남성 &nbsp;
	<input type="radio" value="여성" name="gender"/>여성 &nbsp;</td></tr>
	<tr><th>취미</th>
	<td><input type="checkbox" value="축구" name="hobby">축구 &nbsp;
	<input type="checkbox" value="야구" name="hobby">야구 &nbsp;
	<input type="checkbox" value="농구" name="hobby">농구</td>
	</tr><tr>
	<td><input class="col-12" type="submit"></td></tr>
	</table>
	</form>
	
</body>
</html>