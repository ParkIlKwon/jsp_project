<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
let asset = -1;
let wifi = -1;
let baby = -1;

function getFormatDate(date){
    var year = date.getFullYear();              
    var month = (1 + date.getMonth());          
    month = month >= 10 ? month : '0' + month;  
    var day = date.getDate();                   
   day = day >= 10 ? day : '0' + day;          
    return  year + '-' + month + '-' + day;   
}

function rentCheck(log,cnt) {
	let number =  $("#number").val();
	let date = $("#date").val();
	let today = new Date();  
	
	let A = new Date(date);
	let B = new Date(today);
	let dday = (A.getTime() - B.getTime()) / (24 * 60 * 60 * 1000);
	
	today = getFormatDate(today);
	alert(Math.floor(dday));
	alert(cnt);
	if(asset == -1 || wifi == -1 || baby == -1){
		alert("미선택지가 존재합니다.");
	}else if(number == null || number <= 0){
		alert("렌트일수 입력오류");
	}else if(date <= today){
		alert("대여일은 현재날짜보다 이전일수 없습니다.");
	}else if(log == ""){
		alert("먼저로그인해주세요.");
	}else{
		
		let query = {
				
		}
		
/* 		$.ajax({
			type : "POST",
			url : "${ctx}/ApplyRentCarController.do",
			data : {"id":id,"pw":pw},
			success : function(data) {
				
			}
		}); */
			
	}
}

function changeAsset() {
	asset = $("#asset option:selected").val();
}

function changewifi() {
	wifi = $("#wifi option:selected").val();
}

function changebaby() {
	baby = $("#baby option:selected").val();
}


</script>

<body>
	<h1 align="center">옵션선택</h1>
	<c:forEach var = "c" items="${scar}">
	
	<div class="card mb-3" style="max-width: 1200px;">
  <div class="row g-0">
    <div class="col-md-4">
       <img class="card shadow-sm border-primary"  alt="" src="image/${c.img}" width="400" height="400" style="margin: 20px">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h4 class="card-title" style="margin-left: 200px">${c.name}</h4>
        <p class="card-text"></p>
        <div  style="margin-left: 200px">
         렌트일수  <input type="number" style="margin-left: 10px" id="number"><br><br>
          대여일   <input type='date' name='rentdate' style="margin-left: 30px" id="date"/><br><br>
         보험적용<select class="form-select" aria-label="Default select example" id="asset" style="width: 200px" onchange="changeAsset()">
  <option selected value=-1>보험적용유무</option>
  <option value="1">미적용</option>
  <option value="2">적용(1일1만원)</option>
</select>

	WiFI적용<select class="form-select" aria-label="Default select example" id="wifi" style="width: 200px" onchange="changewifi()">
  <option selected value=-1>WIFI유무</option>
  <option value="1">미적용</option>
  <option value="2">적용옵션1(1일1만원)</option>
  <option value="3">적용옵션2(1일2만원)</option>
</select>
	
		베이비시트적용<select class="form-select" aria-label="Default select example" id="baby" style="width: 200px" onchange="changebaby()">
  <option selected value=-1>시트유무</option>
  <option value="1">미적용</option>
  <option value="2">적용(1일1만원)</option>
</select><br>
	<button class="btn btn-primary" onclick="rentCheck('${log}','${cnt}')">렌트신청하기</button>
         
        </div>
      </div>
    </div>
  </div>
</div>
	
	</c:forEach>


</body>
</html>