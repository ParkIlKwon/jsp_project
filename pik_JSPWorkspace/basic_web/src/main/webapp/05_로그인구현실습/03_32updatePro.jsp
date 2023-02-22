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
	int index= (int)session.getAttribute("log");
	String jId = request.getParameter("id");
	String jPw = request.getParameter("pw");
	String jname = request.getParameter("name");
	String jgender = request.getParameter("gender");
	List <String>idlist = new ArrayList<>((List<String>)session.getAttribute("idList"));
	List<String> pwlist = new ArrayList<>((List<String>)session.getAttribute("pwList"));
	List<String> namelist = new ArrayList<>((List<String>)session.getAttribute("namelist"));
	List<String> genlist = new ArrayList<>((List<String>)session.getAttribute("genderList"));
	
	if(!jPw.equals(pwlist.get(index))){
		response.sendRedirect("03_31updateForm.jsp");
	}else{
	idlist.set(index, jId);
	pwlist.set(index, jPw);
	namelist.set(index, jname);
	genlist.set(index, jgender);
	
	session.setAttribute("idList", idlist);
	session.setAttribute("pwList", pwlist);
	session.setAttribute("namelist", namelist);
	session.setAttribute("genderList", genlist);
	
	session.setAttribute("log", -1);
	response.sendRedirect("02_main.jsp");
	}
	%>



</body>
</html>