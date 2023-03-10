<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "ctx" value="<%=request.getContextPath()%>"/>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>파일업로드</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>


</head>
<script>
let fv = document.querySelectorAll('#fv');
var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
  return new bootstrap.Tooltip(tooltipTriggerEl)
});

function updateimg() {
	 let file = $('#formFile')[0].files[0];
	 uploadFile();
} 

function checkform(){
	let check = true;
	let test =document.querySelectorAll(".fv");
	test.forEach((tag)=>{ if(tag.value==""){ 
		alert(tag)
		check = false;
	}  })
	return check;
}

function uploadFile(){

    let form = $('#imgForm')[0]; // form 태그 객체만 추출 
    let formData = new FormData(form);
 
    $.ajax({
    
        url : '${ctx}/uploadCarImg.do',
        type : 'POST',
        data : formData,
        contentType : false,
        processData : false,
        success: function(data){
        
        	if(data == 'fail'){
        		alert('파일 업로드 실패');
        	}else{
        		alert(data + " 업로드 성공");
        	    let src = "image/" + data;
        	    console.log("src=" + src);
        		$("#inputImg").attr('src',src);
                $("#imgVal").val(data);
        	}
        }
    });
}

function submitform(form) {
	 if(checkform() == false){
	   }else{
			alert("렌트카추가완료");
			form.submit();
	   }
}

</script>

<body>

	<h1 align="center">차량등록페이지</h1>

	<div class="container">
	
	<div class="card">
			<div class="card-header">
				<i class="fas fa-square"></i><h4>차량 사진 업로드</h4>   
			</div>
			<div class="card-body">
				<table class="table">
					<tbody>
						<tr>
							<td>차량 사진 업로드</td>
							<td>
						<div class="input-group mb-3">
		<form id="imgForm" action="uploadCarImg.do" method="post"
					enctype="multipart/form-data">
							<input type="file" class="form-control" id="formFile"
								accept=" .jpg" name="uploadFile" onchange="updateimg()">
							<label for="formFile" class="form-label">차량 이미지 등록 </label> 
						</form>
						</div>

							</td>
						</tr>
						
			
						
					</tbody>
				</table>
			</div>
		</div>
	
		<form name="f" method="post" action="${ctx}/insertCar.do">

			<div class="col-sm-12 pt-3">
				<div class="card">
					<div class="card-header card-header-primary">
						<h4 class="card-title">
							<i class="fas fa-square"></i> 차량 등록 폼
						</h4>
						<p class="card-catagory"></p>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table">
								<tbody>
									<tr style="line-height: 32px;">
						<td>차량 이름</td>
						<td><input type="text" name="car_name" id="fv"
							class="form-control" value="" data-bs-toggle="tooltip"
							data-bs-placement="top" title="멋진차량이름을 지어주세요.(공칸불가)">
						</td>
						<td style="margin-top: 3px"><small>ex:말리부, 아반떼,
								소나타</small></td>
					</tr>
						
					<tr style="line-height: 32px;">
						<td>차량 설명</td>
						<td><input type="text" name="car_info"
							class="form-control" value="" id="fv">
						</td>
						
					</tr>	
						
					<tr>
						<td>차량 카테고리 설정</td>
						<td>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="category"
									id="category" value="1" checked="checked"> <label
									class="form-check-label" for="inlineCheckbox1">소형</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="category"
									id="category" value="2"> <label
									class="form-check-label" for="inlineCheckbox2">중형</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="category"
									id="category" value="3"> <label
									class="form-check-label" for="inlineCheckbox3">대형</label>
							</div>
						</td>
					</tr>
						
						<tr style="line-height: 32px;">
						<td>제작회사</td>
						<td>
						<select class="form-select" aria-label="Default select example" name="company" id="company" style="width: 200px">
					  
					  <option value="현대" selected="selected">현대</option>
					  <option value="기아">기아</option>
					  <option value="bmw">bmw</option>
					  <option value="bentz">bentz</option>
						</select>
						</td>
						</tr>		
						
					<tr style="line-height: 32px;">
						<td>렌트가격:</td>
						<td><input type="text" name="price" id="fv"
							class="form-control text-right" maxlength="4" size="4"
							value="" style="display: inline-block; width: 100px;">
											원</td>
									</tr>

									<tr>
										<td>사진 미리보기</td>
										<td><input type="image" width="100" name="img"
											id="inputImg"
											src="https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg" />
											<input class="fv" id="imgVal" type="hidden" name="img"
											value="" /></td>
									</tr>
							</table>
						</div>
					</div>
				</div>

		<div class="pt-3"></div>


	</div>

			<div class="text-center mt-3 mb-2">
				<input type="button" class="btn btn-primary" onclick="submitform(form)" value="업로드하기"/>
				<button type="reset" class="btn btn-warning">다시쓰기</button>
			</div>
		</form>
		
		

	</div>



</body>
</html>