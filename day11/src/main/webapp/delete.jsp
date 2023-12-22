<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp" %>
    <%--1) 파라미터가 여러개라서 객체로 묶어서 받으려면 jsp:useBean, jsp:setProperty를 사용 --%>
    
    <%--2) 파라미터가 하나만 넘어온다면 EL Tag의 param.을 이용하여  --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<c:set var="row" value="${dao.delete(param.id) }"></c:set>
	
	<%--3) dao에 delete 함수가 있어야한다 --%>
	<%--4) insert/update/delete는 정수를 반환한다  --%>
	<c:if test="${row != 0 }">
		<c:redirect url="index.jsp"></c:redirect>
	
	</c:if>
	
	<script type="text/javascript">
		alert('삭제실패' +'${row}')
		location.href = 'index.jsp'
		
	</script>
	
</body>
</html>