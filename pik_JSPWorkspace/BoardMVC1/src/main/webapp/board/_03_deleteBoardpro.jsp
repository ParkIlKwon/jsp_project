<%@page import="basic.boardDAO"%>
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
		int stat = Integer.parseInt(request.getParameter("stat"));
		int index = Integer.parseInt(request.getParameter("index"));
		
		int cnt = boardDAO.getinstance().deleteBoard(index);
		if(cnt>0) {	  
 			if(stat == 2){	
 				int sn = Integer.parseInt(request.getParameter("sn"));
 				int en = Integer.parseInt(request.getParameter("en"));
				response.sendRedirect("_07_boardListPaging.jsp?sn="+sn+"&en="+en);	
			}else{
			response.sendRedirect("_01_boardList.jsp");	
			}
		}else {
	    	throw new ServletException("not insert");	    	
		}

	%>
</body>
</html>