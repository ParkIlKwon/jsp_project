<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="NewFile.css">
<head>
<meta charset="UTF-8">
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>

<title>Insert title here</title>
</head>
<body>
		<table border="1">
	<tr><td>아이디</td><td>패스워드</td><td>이름</td><td>성별</td><td>삭제</td>
	</tr>
	<%
	List <String> idlist = new ArrayList<>((List<String>)session.getAttribute("idList"));
	List<String> pwlist = new ArrayList<>((List<String>)session.getAttribute("pwList"));
	List<String> namelist = new ArrayList<>((List<String>)session.getAttribute("namelist"));
	List<String> genlist = new ArrayList<>((List<String>)session.getAttribute("genderList"));
	
	for(int i = 0 ; i < idlist.size() ; i ++){
	%>
	<tr>
	
	<td><%=idlist.get(i)%></td><td><%=pwlist.get(i)%></td><td><%=namelist.get(i)%></td><td><%=genlist.get(i)%></td>
	<td><input type="button" value="삭제" onclick="location.href='01_12adminUserDelete.jsp?index=<%=i%>'" /></td>
	</tr>
	
	<%} %>
	
	
	</table>
</body>
</html>