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

<section>

<c:set var="list" value="${dao.selectList() }"></c:set>


	<div>
		<a href="${cpath }/add.jsp"><button>추가</button></a>
		
	</div>


	<div>
	<c:forEach var="dto" items="${list }">
		<div><a href="${cpath }/view.jsp?idx=${dto.idx}">${dto.name }</a></div>
		<div>${dto.price }원</div>
	</c:forEach>
	</div>
	</section>
</body>
</html>