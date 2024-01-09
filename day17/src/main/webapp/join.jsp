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
	<c:if test="${pageContext.request.method == 'GET' }">
		<h4>회원가입</h4>
		
		<form method="POST">
			<p><input type="text" name="userid" placeholder="ID" required="required"></p>
			<p><input type="password" name="userpw" placeholder="Password" required="required"></p>
			<p><input type="text" name="username" placeholder="Name" required="required"></p>
			<p><input type="email" name="email"  placeholder="t1@t1.com" required="required"></p>
			<p>
				<label><input type="radio" name="gender" value="남성" required="required">남성</label>
				<label><input type="radio" name="gender" value="여성" required="required">여성</label>
			</p>
			<p><input type="submit" value="회원가입신청"></p>
		</form>
	</c:if>
	
	<c:if test="${pageContext.request.method == 'POST' }">
		<jsp:useBean id="dto" class="member.MemberDTO"></jsp:useBean>
		<jsp:setProperty property="*" name="dto"/>
		<c:set var="row" value="${memberDAO.insert(dto) }"></c:set>
		<c:if test="${row != 0 }">
			<c:redirect url="/login.jsp"></c:redirect>
		</c:if>
		
		<script type="text/javascript">
			alert('회원가입실패')
			history.go(-1)
		
		</script>
		
	</c:if>
</body>
</html>