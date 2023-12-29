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
	<jsp:useBean id="dto" class="day14.MemberDTO"></jsp:useBean>
	<jsp:setProperty property="*" name="dto"/>
	
	<c:set var="login" value="${dao.login(dto) }" scope="session"></c:set>
	<c:if test="${not empty login }">
			<c:redirect url="/"></c:redirect>
		</c:if>
		
		<script type="text/javascript">
			alert('계정 혹은 패스워드가 일치하지 않습니다')
			history.go(-1)
		</script>
	
</body>
</html>