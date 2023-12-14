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
	<c:if test="${empty param.category }">
	<c:set var="list" value="${dao.selectList() }"></c:set>
	</c:if>
	
	<c:if test="${not empty param.category }">
		<c:set var="list" value="${dao.selectListByCategory(param.category) }"></c:set>
	</c:if>	
	
	<div>
		<a href="${cpath }/add.jsp"><button>영상 추가</button></a>
	</div>
	
	<div class="box">
	<c:forEach var="dto" items="${list }">
		<div class="item">
			<div class="img">
				<a href="${cpath }/view.jsp?idx=${dto.idx}">
					<img alt="" src="${dto.imgName }" height="120"></a>
			</div>
			<div class="title">${dto.title } </div>
			<div class="chtitle">${dto.chtitle } </div>
		</div>
	</c:forEach>
	</div>
	</section>
</body>
</html>