<%@page import="org.apache.catalina.tribes.ChannelSender"%>
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
	int ranNum = Integer.parseInt(request.getParameter("rnum"));
	int input = Integer.parseInt(request.getParameter("result"));
	%>
	<h3><% 
	if(ranNum == input){
		out.print("맞췄다.");
	}else{
	out.print(ranNum > input   ? "내가 작다" : "내가 크다." );
	}
	
	%></h3>
	<a href="updownGamePlay.jsp?play=gamerunning&ranNum=<%=ranNum%>">뒤로가기</a>
</body>
</html>