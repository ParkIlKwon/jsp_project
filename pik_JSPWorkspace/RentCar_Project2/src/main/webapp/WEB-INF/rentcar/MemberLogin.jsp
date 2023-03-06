<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var = "ctx" value="<%=request.getContextPath()%>"/>
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
	if($("#id").val()==''){
		alert("아이디를 입력하세요.");
		$(id).focus();
		$("#id").css("border","3px red solid")
	}else if($("#pw").val()==''){
		alert("패스워드를 입력하세요.");
		$(pw).focus();
		$("#pw").css("border","3px red solid")
	}else{
		form.submit();
	}
}

window.onload = function() {
	$("#id").keyup(function(e) {
		$("#id").css("border","");
	});
	$("#pw").keyup(function(e) {
		$("#id").css("border","");
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