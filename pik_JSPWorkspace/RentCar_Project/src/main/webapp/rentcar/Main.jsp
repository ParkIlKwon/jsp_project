<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "ctx" value="<%=request.getContextPath()%>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 
	
 	<c:if test="${cmenu eq null}">
	<c:set var="cmenu" value="center.jsp"></c:set>
	</c:if> 
	<c:set var="cmenu" value="${cmenu}"></c:set>
	
	<!-- TOP 부분  -->
	<jsp:include page="header.jsp" />
	
	<!-- CENTER 부분  -->
	<div style="border: solid black 1px;">
	<jsp:include page="${cmenu}" />
	</div>
	
	<!-- BOTTOM 부분  -->
	<jsp:include page="bottom.jsp" />
	
	
</body>
</html>