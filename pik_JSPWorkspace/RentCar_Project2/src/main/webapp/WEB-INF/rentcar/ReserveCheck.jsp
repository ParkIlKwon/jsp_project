<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "ctx" value="<%=request.getContextPath()%>"/>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">

function Delete(no,qta,seq){
		$.ajax({
			type : "POST",
			url : "${ctx}/rentDelet.do",
			data : {"no":no,"QTA":qta,"seq":seq},
			success : function(data) {
				alert("삭제완료");
				window.location.reload();
				
			}
		}); 
}

function carinfo() {
	alert("click");
}

</script>


<body style="padding:30px">
	<h1 align="center" style="background-color:">예약확인하기</h1>
	<div class="alert alert-primary alert-dismissible fade show" role="alert">
  <strong>본인이 예약한</strong>자동차를 아래에서 확인하세요 ! 
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" style="margin-right:40px"></button>
</div>
	
<div class="list-group" style="background-color: #F4FFA5;">

		 <c:forEach var="car" items="${checkCarLIst}">

  <div class="list-group-item list-group-item-action" aria-current="true" style="width: 100%">
   <div class="list-group list-group-horizontal">
    <img class="card shadow-sm border-primary"  alt="" src="image/${car.img}" width="200" height="160">
      <p style="margin:10px"><strong>${car.name}</strong>  <button class="btn-close" style="margin-left:90%;height:20px" onclick="Delete('${car.no}','${car.qty}','${car.seq}')"></button>
      <br>QTY : ${car.qty}
      <br>RDAY : ${car.rday}
      <br>OPT : Insurance-${car.usein}  WIFI-${car.usewifi} SEAT-${car.useseat} NAV-${car.usenavi} 
      <br>REN-PERI : ${car.dday} days.
      </p>

    </div>
    <div class="d-flex w-100 justify-content-between">
      <h5 class="mb-1">신차가격 : ${car.price} 만원</h5>
      <small>렌트카출고까지 day</small>
    </div>
    <small style="margin-right:30px;" onclick="carinfo()">클릭시 상세페이지로 이동합니다.</small>
    
  </div>
  <div style="height:10px"></div>
  </c:forEach>
</div>
	

	
</body>
</html>