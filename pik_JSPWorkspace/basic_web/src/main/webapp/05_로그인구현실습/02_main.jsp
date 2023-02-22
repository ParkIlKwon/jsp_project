 <%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="NewFile.css">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
List<String> idlist = (List<String>)session.getAttribute("idList");
System.out.println(idlist);
int log= (int)session.getAttribute("log");

%>

<h1> 메인페이지 </h1>

<table>
	<% if(log == -1){%>
    <tr>
        <td><a href="03_11joinForm.jsp"> 회원가입 </a></td>
        <td><a href="03_21loginForm.jsp"> 로그인 </a></td>
    </tr>
    <%}else{ %>
    <tr>
    	<td><a href="03_23logoutPro.jsp"> 로그아웃 </a></td>
        <td><a href="03_31updateForm.jsp"> 회원정보수정 </a></td>
    	<td><a href="03_42deletePro.jsp?index=<%=log%>"> 회원탈퇴 </a></td>
    	</tr>
    <%}%>
</table>
</body>
</html> 