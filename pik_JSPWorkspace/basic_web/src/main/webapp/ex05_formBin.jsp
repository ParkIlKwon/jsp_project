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
	Random rand = new Random();
	int rnum = rand.nextInt(10)+1;
	
	%>


	<h2>홀 짝 게임</h2>
	   <form action="ex05_formBtnpro1.jsp" method="post">
 
	홀수 1 입력 짝수면 2입력 <br>
	<input type="hidden" name="rnum" value=<%= rnum %> />
	<input type="number" name="result" />
 	
 	<input type="submit" value="입력완료" /> 
 	<input type="button" value="전송" onclick="goNextPage(<%=rnum %>)" /> 
 
   <a href="ex01_basic.jsp"> ex01로 이동</a>
 </form>
 <script>
 
 function goNextPage(num){
	 let value = document.querySelector("input[name='result']").value;
	 location.href="ex05_formBinpro2.jsp?rnum="+num+"&result="+value;
 }
 
 </script>
</body>
</html>




