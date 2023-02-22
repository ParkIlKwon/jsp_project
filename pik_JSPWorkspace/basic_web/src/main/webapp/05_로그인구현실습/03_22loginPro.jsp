<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인확인페이지</title>
</head>
<body>
	
	<%
	request.setCharacterEncoding("utf-8");
	String jId = request.getParameter("id");
	String jPw = request.getParameter("pw");
	%>

	<%
	List<String> idlist = new ArrayList<>((List<String>)session.getAttribute("idList"));
	List<String> pwlist = new ArrayList<>((List<String>)session.getAttribute("pwList"));
	List<String> namelist = new ArrayList<>((List<String>)session.getAttribute("namelist"));
	List<String> genlist = new ArrayList<>((List<String>)session.getAttribute("genderList"));
	
	int index = idlist.indexOf(jId);

	if(index != -1 && pwlist.get(index).equals(jPw)){
	session.setAttribute("log", index);
	 	if(idlist.get(index).equals("admin") && jPw.equals("admin")){
			response.sendRedirect("01_11adminMain.jsp");
		}else{
		response.sendRedirect("02_main.jsp");
		}
	}else{
		response.sendRedirect("02_main.jsp");
	}
		%>

</body>
</html>







	






