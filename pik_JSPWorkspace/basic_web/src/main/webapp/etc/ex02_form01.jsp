<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="ex03_form02.jsp" method="post">
	<table border="1">
	<tr>
		<td>첫번째 수를 입력</td>
		<td><input type = "number" name="su1"/></td>
			</tr>
		<tr>
		<td>두번째 수를 입력</td>
		<td><input type = "number" name="su2"/></td>
		</tr>
		
		<tr>
		<td colspan="2"><button>전송</button></td>
		</tr>
		<tr>
		<td colspan="2"><input type = "reset" value="리셋"/></td>
		</tr>
		
	</table>
	
	</form>
</body>
</html>