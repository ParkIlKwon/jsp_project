<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="header.css">
</head>
<body>
	<header>
	<div class ="row">
	<div class="col-4 py-3" onclick="location.href='_01_boardList.jsp'"> 전체 게시글 확인하기 </div>
	<div class="col-2 py-3" onclick="location.href='_02_addDummy.jsp'"> 더미 게시글 추가하기 </div>
	<div class="col-2 py-3" onclick="location.href='_06_deleteBoardpro.jsp'"> 전체 게시글 삭제하기 </div>
	<div class="col-2 py-3" onclick="location.href='_04_addBoard.jsp'"> 게시글 추가하기 </div>
	<div class="col-2 py-3" onclick="location.href='_07_boardListPaging.jsp?sn=<%=1%>&en=<%=1%>'"> 페이징게시판 </div>
	</div>

	</header>
	
</body>
</html>