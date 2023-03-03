<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../header.jsp"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AccountForm</title>
</head>

<script type="text/javascript">
	let check  = -1 ;
	function idcheck() {
		if($("#id").val()==''){
			alert("아이디를 입력하세요.");
			$(id).focus();
			$("#id").css("border","3px red solid")
		}
		
		let id=$("#id").val();
		$.ajax({
			url : "${ctx}/memberIdCheck.do" ,
			type: "POST",
			data : {"id" : id},
			success : getResult,
			error : function(){ alert("error"); } 
		});
	}
	
	function getResult(data) {
		if(data == "valid"){
			alert("사용가능한 id 입니다.");
			$("#id").css("border","3px skyblue solid")
			check = 1;
		}else if(data == "notvalid"){
			 $("#id").val("");
			alert("사용불가능한 id 입니다.");
			check = -1;
		}
		
	}
	
	function checkForm(form){
		if(check == -1){
			alert("아이디 체크 요망.");
		}else{
			form.submit();
		}
	
	}
	
	window.onload = function() {
		$("#id").keyup(function(e) {
			if(e.keyCode == '8'){
				check = -1;
			}
			$("#id").css("border","");
		});
	}

</script>
<body>
	<h1>회원가입 폼</h1>
	<form action="${ctx}/memberAccount.do">
	<table class="table table-striped" border="1">
	<tr><th style="text-align: center;" class="col-2">I  D</th><td><input class="left col-6" type="text" name="id" id="id"/>
	<input type = "button" onclick="idcheck()" value="중복체크"></td></tr>
	<tr><th style="text-align: center;" class="col-2">P  W</th><td><input class="left col-6" type="text" name="pw"/></td></tr>
	<tr><th style="text-align: center;" class="col-2">NAME</th><td><input class="left col-6" type="text" name="name"/></td></tr>
	<tr><th style="text-align: center;" class="col-2">EMail</th><td><input class="left col-6" type="text" name="email"/></td></tr>
	<tr><th style="text-align: center;" class="col-2">gender</th><td><input type="radio" value="남성" name="gender" checked="checked"/>남성&nbsp;&nbsp;<input type="radio" value="여성" name="gender"/>여성</td></tr>
	<tr><th style="text-align: center;" class="col-2">hobby</th><td>
	<input type="checkbox" id="hobby" name="hobby" value="농구" />농구
	<input type="checkbox" id="hobby" name="hobby" value="야구" />야구
	<input type="checkbox" id="hobby" name="hobby" value="축구" />축구
	</td></tr>
	<tr><td colspan="2"><input style="margin-left: 200px" class="col-2 btn btn-secondary" type="button" value="회원가입" onclick="checkForm(form)"/>  <input type="reset" value="취소" class="col-2 btn btn-warning"/></td></tr>
	</table>
		</form>
</body>
</html>