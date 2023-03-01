<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${ctx}/MemberLoginController.do" method="post">
	<table class="table" border="1">
		<tr>
		<th class="col-1">I D</th>
		<td class="col-6"><input class="col-6" type="text" name="id"></td>
		</tr>
		
		<tr>
		<th class="col-1">P W</th>
		<td class="col-6"><input class="left col-6" type="text" name="pw"></td>
		</tr>
		
		<tr><td class="col-4"  colspan="2" align="center"><input class="col-4" type="submit" value="Login"></td></tr>
		
	</table>
	</form>

</body>
</html>