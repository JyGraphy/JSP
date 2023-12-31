<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<jsp:useBean id="dto" class="bugs.BugsDTO"></jsp:useBean>
	<jsp:setProperty property="*" name="dto"/>
	
	
	<jsp:useBean id="dao" class="bugs.BugsDAO"></jsp:useBean>
	<c:set var="row" value="${dao.update(dto) }"></c:set>
	
	<c:if test="${row != 0 }">
		<c:redirect url="view.jsp?id=${param.id }"></c:redirect>
	</c:if>
	
	<h3>수정실패</h3>
	<a href="modify.jsp?id=${dto.id }"><button>수정 페이지로 이동</button></a>
	
</body>
</html>