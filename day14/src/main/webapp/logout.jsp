<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="frame">
		<h3>logout.jsp</h3>
		<c:remove var="login" scope="session"/>
		<c:redirect url="/"></c:redirect>	
		
		
	</section>
</body>
</html>