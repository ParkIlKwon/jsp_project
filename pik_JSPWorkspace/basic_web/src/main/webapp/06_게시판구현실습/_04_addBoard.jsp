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
	<h1>게시글 추가하기</h1>
	<%
	int number = boardDAO.getinstance().getNumber();
	%>
	<form action="_04_addBoardpro.jsp" method="post">
	<table border="1">
		<tr><td>번호</td>  <td><%=number%></td> </tr>
		<tr><td>작성자</td>  <td><input type="text" name="name" value="test" readonly="readonly"></td> </tr>
		<tr><td>제목</td>  <td><input type="text" name="title"></td> </tr>
		
		<tr><td>내용</td>  <td>
		<textarea rows="10" cols="30" name="body" style="resize: none;"></textarea>
		</td></tr>
		<tr><td colspan="4"><input type="button" value="추가하기" onclick="checkform(form)"/></td></tr>
	</table>
	
	</form>
	
	<script>
	
	function checkform(form) {
		let writer = document.querySelector('input[name="name"]');
		let title = document.querySelector('input[name="title"]');
		let body = form.body;
		if(!checkVal(writer))return;
		if(!checkVal(title))return;
		if(!checkVal(body))return;
		form.submit();
		
	}
	
	function checkVal(obj) {
		let value = obj.value.trim();
		if(value.length == 0){
			alert("값이 비워져 있으면 안 됩니다.");
			obj.focus();
			return false;
		}return true;
	}
	
	</script>
</body>
</html>