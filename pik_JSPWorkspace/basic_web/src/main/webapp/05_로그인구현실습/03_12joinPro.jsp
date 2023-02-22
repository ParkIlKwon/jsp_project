<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String jId = request.getParameter("id");
	String jPw = request.getParameter("pw");
	String jname = request.getParameter("name");
	String jgender = request.getParameter("gender");
	List <String>idlist = new ArrayList<>((List<String>)session.getAttribute("idList"));
	
	%>

	<h1>회원가입 안내</h1>
	<%

	if(idlist.contains(jId)){
		%>
		<h3>회원가입 실패 (아이디중복)</h3>
		<%
	}else{
		
		%>
		<h3>회원가입 성공</h3>
		<%
		List<String> pwlist = new ArrayList<>((List<String>)session.getAttribute("pwList"));
		List<String> namelist = new ArrayList<>((List<String>)session.getAttribute("namelist"));
		List<String> genlist = new ArrayList<>((List<String>)session.getAttribute("genderList"));
		
		idlist.add(jId);
 		pwlist.add(jPw);
		namelist.add(jname);
		genlist.add(jgender); 
		
		session.setAttribute("idList", idlist);
		session.setAttribute("pwList", pwlist);
		session.setAttribute("namelist", namelist);
		session.setAttribute("genderList", genlist);
		
		}%>
		
	<a href="02_main.jsp"> 뒤로가기 </a>
	
</body>
</html>