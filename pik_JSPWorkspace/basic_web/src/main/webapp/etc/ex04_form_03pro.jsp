<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	boolean flag = true;
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	String temp = num1 + num2;
	for(int i = 0 ; i < temp.length() ; i++){
		if(temp.charAt(i)<'0' || temp.charAt(i) >'9'){
			out.print('��');
			flag = false;
		}
	}
	
	%>
	<h1><%
	if(flag){
		int n1 = Integer.parseInt(num1);
		int n2 = Integer.parseInt(num2);
		if(n1 == n2){
			out.print("�μ��� ���� �����ϴ�.");			
		}else{
		out.print(n1 > n2 ? "����1�̴�Ů�ϴ�" : "����2���� Ů�ϴ�" );
		}
	}else{
		out.print("���ڰ� �ƴѰ��� �����մϴ�.");
	}
	%></h1>
	
	
	
	
</body>
</html>