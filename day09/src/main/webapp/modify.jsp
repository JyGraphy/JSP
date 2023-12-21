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
	
	<c:set var="dto" value="${dao.selectOne(param.idx) }"></c:set>
	
	<section>
		<h3>가격수정</h3>
		<form action="modify-action.jsp">
		
		
				<p><input type="number" name="price" placeholder="가격" required="required" value="${dto.price }"></p>
				<input type="hidden" name="idx" value="${dto.idx }">
				<p><input type="submit"></p>
			
			
		
		
		</form>
	</section>
	
</body>
</html>