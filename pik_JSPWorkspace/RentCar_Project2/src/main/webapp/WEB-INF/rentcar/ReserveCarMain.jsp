<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "ctx" value="<%=request.getContextPath()%>"/>
<html>
<head>
<meta charset="UTF-8">
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>	
		<h3 align="center">최신형 자동차</h3>
<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>신형자동차 판매 개시</strong> 맨처음 세개의 자동차는 가장 최근에 출시된 차량들입니다.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
		
		<table class="card text-white bg-secondary mb-4">
		
		<c:forEach var = "c" items="${clist}">
		<tr>
		<td>
		<div class="card-header border-warning">
		<img class="card shadow-sm border-primary"  alt="" src="image/${c.img}" width="300" height="220">
		</div>
		</td>
		<td>
		<div class="card-body">
		<p class="card-text">
		
		${c.company}<br><br>${c.info}<br><br>${c.price} 만원</p>
			 </div>

		</td>
		<td>
		<button class="btn btn-primary" onclick="location.href='${ctx}/ReserveCarPro.do?select=${c.no}'">예약하기"</button>
		</td>
		</tr>
		<tr><td colspan="3" height="3px" style="background-color: gold;"></td></tr>
		</c:forEach>
		</table>

<div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
    차종선택
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
    <li><a class="dropdown-item" href="${ctx}/carReserveMain.do?option=${1}">소형</a></li>
    <li><a class="dropdown-item" href="${ctx}/carReserveMain.do?option=${2}">중형</a></li>
    <li><a class="dropdown-item" href="${ctx}/carReserveMain.do?option=${3}">대형</a></li>
  </ul>
</div>

		
</body>
</html>