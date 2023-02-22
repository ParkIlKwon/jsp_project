<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
	#btn{
	margin-top: 20px;
	margin-left: 50px;
	}
</style>
<head>
<link rel="stylesheet" type="text/css" href="NewFile.css">
<meta charset="UTF-8">
<title>로그인</title>

</head>
<body>
<h1>로그인 페이지</h1>
<form action="03_22loginPro.jsp">
<table border="1">
		<tr><td> ID </td><td><input type="text" name="id"></td></tr>
		<tr><td> PW </td><td><input type="text" name="pw"></td></tr>
		<tr><td colspan = "2" align="center" id="submit"><input type="submit" value="로그인"></td></tr>
	</table>

	<input type="button" value="메인으로" id="btn" onclick="goHome()" />
	
</form>

<script>
	function goHome() {
		location.href="02_main.jsp";
	}
</script>

</body>
</html>