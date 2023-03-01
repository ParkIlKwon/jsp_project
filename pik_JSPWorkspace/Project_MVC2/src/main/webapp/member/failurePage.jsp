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
	String ssf = request.getParameter("ssf");
	
	if(ssf.equals("1")){	
	%>
	<script>
	alert("로그인실패");
	</script>
	<%response.sendRedirect("MemberLogin.jsp");
	}else{ %>
	<script>
	alert("회원가입실패");
	</script>
	<%} %>
</body>

</html>
