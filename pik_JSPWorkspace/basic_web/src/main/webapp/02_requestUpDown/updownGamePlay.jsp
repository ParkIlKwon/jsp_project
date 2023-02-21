<%@page import="java.util.Random"%>
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
	Random rd = new Random();
	
	int ranNum = 0;
	String play = request.getParameter("play");
	if(play.equals("gamestart")){
		ranNum = rd.nextInt(10)+1;
	}else{
		ranNum = Integer.parseInt(request.getParameter("ranNum"));
	}
	%>
	
	<h2>치트키<%= ranNum%></h2>
	<h1>업다운게임</h1>
	
	<form action="updownGamePlaypro.jsp">
	<input type="hidden" name="rnum" value=<%= ranNum %> />
	<input type="number" name="result" />
	<input type="submit" value="전송" />
	</form>
	
	
	
</body>
</html>