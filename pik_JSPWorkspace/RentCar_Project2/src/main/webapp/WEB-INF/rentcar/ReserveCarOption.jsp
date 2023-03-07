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
function rentCheck() {
	
	alert($("#asset").val($(this).val()));
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
         렌트일수  <input type="number" style="margin-left: 10px"><br><br>
          대여일   <input type='date' name='rentdate' style="margin-left: 30px"/><br><br>
         보험적용<select class="form-select" aria-label="Default select example" id="assurance" style="width: 200px">
  <option selected id="asset">보험적용유무</option>
  <option value="1">미적용</option>
  <option value="2">적용(1일1만원)</option>
</select>

	WiFI적용<select class="form-select" aria-label="Default select example" id="assurance" style="width: 200px">
  <option selected>WIFI유무</option>
  <option value="1">미적용</option>
  <option value="2">적용옵션1(1일1만원)</option>
  <option value="3">적용옵션2(1일2만원)</option>
</select>
	
		베이비시트적용<select class="form-select" aria-label="Default select example" id="assurance" style="width: 200px">
  <option selected>시트유무</option>
  <option value="1">미적용</option>
  <option value="2">적용(1일1만원)</option>
</select><br>
	<button class="btn btn-primary" onclick="rentCheck()">렌트신청하기</button>
         
        </div>
      </div>
    </div>
  </div>
</div>
	
	</c:forEach>


</body>
</html>