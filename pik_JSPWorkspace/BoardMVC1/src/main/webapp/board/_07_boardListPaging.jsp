<%@page import="basic.board"%>
<%@page import="java.util.ArrayList"%>
<%@page import="basic.boardDAO2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file= "header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	ArrayList<board>boardArray = boardDAO2.getinstance().getAllBoardArray();
		int totalBoardCnt = boardArray.size();
		int sn = 0;
		int en = 0;

		sn = Integer.parseInt(request.getParameter("sn"));
		en = Integer.parseInt(request.getParameter("en"));
	%>
	<h1>게시글 페이징</h1>
	<h3 id="boardcnt">전체 게시글 수: <%=totalBoardCnt %></h3>
	<%
	int onepagePerBoardCnt =  5;
	int currentPage = sn;
	int totalpage = 0;
	if(totalBoardCnt / onepagePerBoardCnt == 0){
		totalpage = 1;
	}else{
		totalpage = totalBoardCnt / onepagePerBoardCnt;
		totalpage+= totalpage % onepagePerBoardCnt == 0 ? 
			0	:   1 ; 
	}
	int startidx = (currentPage - 1) * onepagePerBoardCnt;
	int currentPageCnt = 0 ;
	if(totalpage == currentPage){
		currentPageCnt = totalBoardCnt % onepagePerBoardCnt;
	}else{
		currentPageCnt = 5;
	}
	%>
	<table border="1" class ="table">
	<tr style="font-weight: bolder;"> <td>번호</td> <td>작성자</td> <td>작성일</td> <td>제목</td> <td>내용</td> <td>삭제</td> </tr>
	
	<%for(int i = startidx ; i <startidx + currentPageCnt; i++ ){%>
	<tr> 
	<td><%=boardArray.get(i).getId()%></td> 
	<td><%=boardArray.get(i).getName()%></td> 
	<td><%=boardArray.get(i).getDate()%></td> 
	<td><%=boardArray.get(i).getTitle()%></td> 
	<td><%=boardArray.get(i).getBody()%></td> 
	<td><input type="button" value="삭제하기" onclick="location.href
	= '_03_deleteBoardpro.jsp?index=<%=i%>&stat=<%=2%>&sn=<%=sn%>&en=<%=en%>'"/></td>
	 </tr>
	<%} %>
	<tr><td colspan="6"> <input type="button" value="메인화면" onclick="location.href='_00_main.jsp'"/> </td></tr>
	</table>
	<%
	int oneListNum = 3;
	int currentNum = en;
	int startNum = 1 + ((currentNum - 1) * oneListNum);
	int endNum = 0 ; 
	boolean up = totalBoardCnt - 15*currentNum > 0 ? true : false;
	boolean down = currentNum == 1 ? false : true;
	if(totalBoardCnt - 15*currentNum >= 0 ){
		endNum = oneListNum * currentNum;
	}else{
		 int cnum = totalBoardCnt - 15*(currentNum-1);
		endNum = cnum % onepagePerBoardCnt == 0 ? cnum / onepagePerBoardCnt :
			cnum / onepagePerBoardCnt + 1;
		endNum += oneListNum * (currentNum - 1);
	}
	int k;
	%>
	<%
	if(down == true){%>
	[<a href="_07_boardListPaging.jsp?sn=<%=sn%>&en=<%=--currentNum%>">이전</a>]
	<%}%>
	<%
	for(k = startNum ; k <= endNum ; k ++ ){
		%>
	[<a href="_07_boardListPaging.jsp?sn=<%=k%>&en=<%=en%>"><%=k %></a>]
	<%}%>
	<%
	if(up == true){%>
	[<a href="_07_boardListPaging.jsp?sn=<%=sn%>&en=<%=++currentNum%>">이후</a>]
	<%}%>

</body>
</html>