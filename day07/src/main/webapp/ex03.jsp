<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03</title>
</head>
<body>
	<%
		pageContext.setAttribute("test", "제우스");
		request.setAttribute("test", "오너" );
		session.setAttribute("test", "페이커" );
		application.setAttribute("test", "구마유시" );
	
	
	%>
	<jsp:useBean id="pro" class="java.util.Properties" scope="session"></jsp:useBean>
	<c:set var="test2" value="김정균" scope="request"></c:set>
	<h3>\${test }:${test }</h3>
	<h3>\${pageScope.test }: ${pageScope.test }</h3>
	<h3>\${requestScope.test }: ${requestScope.test}</h3>
	<h3>\${sessionScope.test }: ${sessionScope.test }</h3>
	<h3>\${applicationScope.test }: ${applicationScope.test }</h3>
</body>
</html>