<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
	<h1>[����1]10���� 50���� arr �迭�� ������ �迭���� ��簪�� ����Ѵ�.</h1>
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