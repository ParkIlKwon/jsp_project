<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="NewFile.css">
<style>
	table {
	border: none;
}
	</style>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
 	<%
 	List<String> idlist = (List<String>)session.getAttribute("idList");
	out.print(idlist);
	for(String s : idlist){
	}
	%>

	<h1>회원가입 페이지</h1>
	<form action="03_12joinPro.jsp" method="post">
	<table border="1">
		<tr><td>회원가입 ID</td><td><input type="text" name="id"></td></tr>
		<tr><td>회원가입 PW</td><td><input type="text" name="pw"></td></tr>
		<tr><td>회원가입 name</td><td><input type="text" name="name"></td></tr>
		<tr><td>회원가입 성별</td><td><input type="radio" name="gender" value="남성" checked>남성&nbsp;
                     <input type="radio" name="gender" value="여성">여성&nbsp;</td></tr>
		<tr><td colspan = "2" align="center" id="submit"><input type="submit" value="회원가입"></td></tr>
	</table>
	</form>
	
</body>
</html>