<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<c:set var = "ctx" value="<%=request.getContextPath()%>"/>
<c:set var = "url" value="ReserveCarOption.jsp"/>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">

function rentdo() {
	let count=$("#count").val();
	if(!$.trim(count)){
		alert("수량을 입력하세요.");
	}else{
		$.ajax({
			type : "POST",
			url : "${ctx}/RentCarProController.do",
			data : {"count":count},
			success : function (data) {
				if(data==1){
					window.location.href = "${ctx}/main.do?cos=${url}";
				}else{
					alert("수량선택을 확인하여주세요.");
				}
			}
		})
	}
}

</script>
<body>
	<h1 align="center">수량선택하기</h1>
	<c:forEach var = "c" items="${scar}">

	<div class="card">
	<div class="card mb-3" style="max-width: 1000px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img class="card shadow-sm border-primary"  alt="" src="image/${c.img}" width="330" height="220">
    </div>
    <div class="col-md-8" style="background-color:rgb(153,255,255);">
      <div class="card-body"  style="background-color:rgb(204,255,153);">
        <h5 class="card-title">${c.name}</h5>
        <p class="card-text">해당차량의 구매 대수를 선택하시고 아래 버튼을 눌러주세요.</p>
        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      </div>
      <input type="number" placeholder="수량넣기" id="count" style="margin: 20px"/>
      <button class="btn btn-primary" onclick="rentdo()">렌트하기 !</button>
    </div>
  </div>
</div>
	</div>
	</c:forEach>
	
</body>
</html>