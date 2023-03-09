<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일업로드</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


</head>
<script>

var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
  return new bootstrap.Tooltip(tooltipTriggerEl)
});

	 
	

</script>

<body>
	
	<h1 align="center">차량등록페이지</h1>
	
	<div class="container">
    <form name="f" method="post">
 
        <div class="col-sm-12 pt-3">
            <div class="card">
                <div class="card-header card-header-primary">
                    <h4 class="card-title"><i class="fas fa-square"></i> 차량 등록 폼</h4>
                    <p class="card-catagory"></p>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table">
                            <tbody>
                            <tr style="line-height:32px;">
                                <td>차량 이름</td>
                                <td>
                                    <input type="text" name="car_name" class="form-control" value=""
                                    data-bs-toggle="tooltip" data-bs-placement="top" title="멋진차량이름을 지어주세요.(공칸불가)">
                                </td>   
                                <td style="margin-top: 3px">
                                <small>ex:말리부, 아반떼, 소나타</small>
                                </td>                     
                            </tr>

                        
                            <tr>
                                <td>차량 카테고리 설정 </td>
                                <td>
                 <div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="category"  id="category" value="option1">
  <label class="form-check-label" for="inlineCheckbox1">소형</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="category" id="category" value="option2">
  <label class="form-check-label" for="inlineCheckbox2">중형</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="category" id="category" value="option3">
  <label class="form-check-label" for="inlineCheckbox3">대형</label>
</div>    
                     </td>   
    		    </tr>            
                          
<tr><td>
차량 사진 업로드
</td>
<td>
<div class="input-group mb-3">
  <input type="file" class="form-control" id="inputGroupFile02">
  <label class="input-group-text" for="inputGroupFile02">Upload</label>
</div>

</td>
</tr>                    	
                           	
    

                        </table>
                    </div>
                </div>
            </div>
 
            <div class="pt-3"></div>
 
            <div class="card">
                <div class="card-header"><i class="fas fa-square"></i> 차량 가격 설정</div>
                <div class="card-body">
                    <table class="table">
                        <tbody>
                            <tr style="line-height:32px;">
                                <td>차량가격:</td>
                                <td>
                                    <input type="text" name="gps_radius" class="form-control text-right" maxlength="4" size="4" value="" style="display:inline-block;width:100px;"> 만원
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
 
        </div>
        
    <div class="text-center mt-3 mb-2">
        <button type="button" class="btn btn-success">업로드하기</button>
        <button type="reset" class="btn btn-info">다시쓰기</button>
    </div>
    </form>
 
</div>
	
	
	
</body>
</html>