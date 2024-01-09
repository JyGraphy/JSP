<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ex03.*" %>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="cpath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="reviewDAO" value="${ReviewDAO.getInstance() }"></c:set>
	<c:set var="dto" value="${reviewDAO.selectOne(param.idx) }"></c:set>
	
	<div>
		<div>${dto.idx } | ${dto.storeName } | ${dto.visitDate }</div>
		<div><img alt="" src="${cpath }/reviewImage/${dto.image }"></div>
		<div><pre>${dto.content }</pre></div>
	</div>

	<div>
		<a href="${cpaht }ex03-form.jsp"><button>목록 및 추가</button></a>
	
	</div>











</body>
</html>