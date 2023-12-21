<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="cpath" value="${pageContext.request.contextPath }"></c:set>
<jsp:useBean id="dao" class="product.ProductDAO"></jsp:useBean>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
section > h1 > img {
	width: 200px;

}

</style>
</head>
<body>



	<header>
	<h1><a href="${cpath }">T1 shop</a></h1>
	<nav>
		<ul>
			<li><a href="${cpath }/list.jsp">상품목록</a></li>
		</ul>
	
	</nav>
</header>



</body>
</html>