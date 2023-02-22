<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="NewFile.css">
<meta charset="UTF-8">
<title>회원정보를 수정하자 ~</title>
</head>
<body>
	<%
	List <String> idlist = new ArrayList<>((List<String>)session.getAttribute("idList"));
	List<String> pwlist = new ArrayList<>((List<String>)session.getAttribute("pwList"));
	List<String> namelist = new ArrayList<>((List<String>)session.getAttribute("namelist"));
	List<String> genlist = new ArrayList<>((List<String>)session.getAttribute("genderList"));
	int index = (int)session.getAttribute("log");
	String gender = genlist.get(index);
	%>
	<h1>회원정보 수정</h1>
	<form action="03_32updatePro.jsp" method="post">
	<table border="1">
		<tr><td>아이디</td><td><input type="text" name="id" value="<%=idlist.get(index)%>" readonly></td></tr>
		<tr><td>패스워드</td><td><input type="text" name="pw"></td></tr>
		<tr><td>이름</td><td><input type="text" name="name"></td></tr>
		<tr><td>성별</td><td><input type="radio" name="gender" value="남성" <%if(gender.equals("남성")){ %> checked <%} %>/>남성&nbsp;
                     <input type="radio" name="gender" value="여성" <%if(gender.equals("여성")){ %> checked <%} %>>여성&nbsp;</td></tr>
		<tr><td colspan = "2" align="center" id="submit"><input type="submit" value="정보수정"></td></tr>
	</table>
	</form>


</body>
</html>