<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보삭제하자~</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	int index = Integer.parseInt(request.getParameter("index"));
	List <String> idlist = new ArrayList<>((List<String>)session.getAttribute("idList"));
	List<String> pwlist = new ArrayList<>((List<String>)session.getAttribute("pwList"));
	List<String> namelist = new ArrayList<>((List<String>)session.getAttribute("namelist"));
	List<String> genlist = new ArrayList<>((List<String>)session.getAttribute("genderList"));
	
	idlist.remove(index);
	pwlist.remove(index);
	namelist.remove(index);
	genlist.remove(index);
	
	session.setAttribute("idList", idlist);
	session.setAttribute("pwList", pwlist);
	session.setAttribute("namelist", namelist);
	session.setAttribute("genderList", genlist);
	response.sendRedirect("01_13adminUserList.jsp");
	%>
</body>
</html>