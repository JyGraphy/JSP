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
	
	<jsp:useBean id="dao" class="bugs.BugsDAO"></jsp:useBean>
	<c:set var="row" value="${dao.delete(param.id) }"></c:set>
	
	
	<c:if test="${row !=0 }">
		<c:redirect url="list.jsp"></c:redirect>
	</c:if>
	
	<script type="text/javascript">
		alert('삭제실패' + '${row}')
		location.href = 'list.jsp'
	</script>
	
	
</body>
</html>