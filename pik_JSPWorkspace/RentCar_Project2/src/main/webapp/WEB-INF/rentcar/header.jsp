<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "ctx" value="<%=request.getContextPath()%>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${ctx}/css/style.css">
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
</head>

<script type="text/javascript">
function logcheck(log) {
	
	if(log == ""){
		alert("로그인 후 이용가능한 메뉴입니다.");
	}else{
		window.location.href = "${ctx}/carReserveCheck.do";
	}
}


</script>


<body>
	<table>
		
		<tr height="100" align="center"><td><p style="cursor: pointer;margin-left: 2px" 
		onclick="location.href='${ctx}/main.do';
		<%session.setAttribute("cmenu", "center.jsp");%>">
		<img src="image/rent_logo.jpg" height="100">
		</p></td>
		<td width="200"></td>
		
		 <c:if test="${log eq null}">
		<td align="center">로그인하세요. Guest 님</td>
		<td width="200"><button onclick="location.href='${ctx}/memberLogin.do'">로그인</button></td>
		
		</c:if>
		
		<c:if test="${log ne null}">
		<td align="center">환영합니다. ${log} 님</td>
		<td width="200"><button onclick="location.href='${ctx}/memberLogout.do'">로그아웃</button></td>
		</c:if>
		
		</tr>
		
		<tr>
		<td width="100"></td>
		<td width="300"></td>
		<td width="200"></td>
		<td width="200"></td>
		</tr>
		</table>
		
	<header>
		
		<div class="row h-40">
		                                        				
		<div class="col-2" style="border: white solid 1px;"
      	onclick="location.href='${ctx}/carReserveMain.do'"
        >예약하기</div>
		<div class="col-2" style="border: white solid 1px;"
		onclick="logcheck('${log}')"
		>예약확인</div>
		<div class="col-2" style="border: white solid 1px;">자유게시판</div>
		<div class="col-3" style="border: white solid 1px;">이벤트</div>
		<div class="col-3" style="border: white solid 1px;">고객센터</div>
	</div>
	</header> 
	
	
</body>
</html>