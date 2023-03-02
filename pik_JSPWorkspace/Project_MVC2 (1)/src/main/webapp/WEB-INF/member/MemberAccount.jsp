<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../header.jsp"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AccountForm</title>
</head>
<body>
	<h1>회원가입 폼</h1>
	<form action="${ctx}/MemberAccount.do">
	<table class="table table-striped" border="1">
	<tr><th style="text-align: center;" class="col-2">I  D</th><td><input class="left col-6" type="text" name="id"/></td></tr>
	<tr><th style="text-align: center;" class="col-2">P  W</th><td><input class="left col-6" type="text" name="pw"/></td></tr>
	<tr><th style="text-align: center;" class="col-2">NAME</th><td><input class="left col-6" type="text" name="name"/></td></tr>
	<tr><th style="text-align: center;" class="col-2">EMail</th><td><input class="left col-6" type="text" name="email"/></td></tr>
	<tr><th style="text-align: center;" class="col-2">gender</th><td><input type="radio" value="남성" name="gender"/>남성&nbsp;&nbsp;<input type="radio" value="여성" name="gender"/>여성</td></tr>
	<tr><th style="text-align: center;" class="col-2">hobby</th><td>
	<input type="checkbox" name="hobby" value="농구" />농구
	<input type="checkbox" name="hobby" value="야구" />야구
	<input type="checkbox" name="hobby" value="축구" />축구
	</td></tr>
	<tr><td colspan="2"><input style="margin-left: 200px" class="col-2 btn btn-secondary" type="submit" value="회원가입"/>  <input type="reset" value="취소" class="col-2 btn btn-warning"/></td></tr>
	</table>
		</form>
</body>
</html>