<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var = "ctx" value="<%=request.getContextPath()%>"/>
<c:set var = "url" value="center.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<title>Insert title here</title>
</head>
<script type="text/javascript">
let check  = -1;

function idcheck(form) {
	if(!$.trim($("#id").val())){
		alert("아이디를 입력하세요.");
		$(id).focus();
		$("#id").css("border","3px red solid")
	}else if(!$.trim($("#pw").val())){
		alert("패스워드를 입력하세요.");
		$(pw).focus();
		$("#pw").css("border","3px red solid")
	}else{
		let id=$("#id").val();
		let pw=$("#pw").val();
		$.ajax({
			type : "POST",
			url : "${ctx}/memberLogin.do",
			data : {"id":id,"pw":pw},
			success : function(data) {
				if(data == 1){
					alert("로그인성공");
					window.location.href = "${ctx}/main.do?cos=${url}";
				}else {
					alert("아이디와 패스워드를 확인해주세요.");
					$("#id").css("border","3px orange solid")
					$("#pw").css("border","3px orange solid")
					$("#id").val("");
					$("#pw").val("");
				}	
			}
		});
	}
}

window.onload = function() {
	$("#id").keyup(function(e) {
		$("#id").css("border","");
	});
	$("#pw").keyup(function(e) {
		$("#pw").css("border","");
	});
}


</script>
<body>
				
	<form action="${ctx}/memberLogin.do">
	<table class="table table-striped">
	<tr><td align="center" colspan="2"><h2>로그인</h2></td></tr>
	<tr><td class="col-4" align="right">ID</td><td><input class="col-5" type="text" name="id" id="id"></td></tr>
	<tr><td align="right">PW</td><td><input class="col-5" type="text" name="pw" id="pw"></td></tr>
	<tr><td colspan="2" align="center"><input type="button" onclick="idcheck(form)" value="로그인"></td></tr>
	</table>
	</form>
</body>
</html>