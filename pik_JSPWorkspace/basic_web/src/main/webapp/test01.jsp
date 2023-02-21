<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
	<h1>[문제1]10붙터 50까지 arr 배열에 저장후 배열안의 모든값을 출력한다.</h1>
<body>
	<%
	int arr[] = {10,20,30,40,50};
	int total = 0;
	for(int i = 0 ; i < arr.length ; i++){
		out.print("<h1>"+arr[i]+"</h1>");
		total += arr[i];
	}
	%>
	<h1><%= total %></h1>
</body>
</html>