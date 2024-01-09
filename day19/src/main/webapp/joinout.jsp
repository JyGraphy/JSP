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
	<h4>회원탈퇴</h4>
	
	<c:if test="${pageContext.request.method == 'GET' }">
	
		<form method="POST">
			<p><input type="hidden" name="userid" value="${login.userid}"></p>
			<p><input type="password" name="userpw" placeholder="Password" required="required"></p>
			<p><input type="submit" value="회원 탈퇴"></p>
		</form>
	
	
	</c:if>
	<c:if test="${pageContext.request.method == 'POST' }">
		<jsp:useBean id="dto" class="member.MemberDTO"></jsp:useBean>
		<jsp:setProperty property="*" name="dto"/>
		<c:set var="row" value="${memberDAO.delete(dto) }"></c:set>
		
		<c:if test="${row != 0 }">
			<c:redirect url="/logout.jsp"></c:redirect>
		</c:if>
		
		<script type="text/javascript">
			alert('회원탈퇴실패')
			history.go(-1)
		</script>
	</c:if>
</body>
</html>