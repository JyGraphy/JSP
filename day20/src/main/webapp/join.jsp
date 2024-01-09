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
		<h3>회원가입</h3>
		
		<form method="POST">
			<p><input type="text" name="userid" placeholder="ID" required="required"></p>
			<p><input type="password" name="userpw" placeholder="Password" required="required"></p>
			<p><input type="text" name="username" placeholder="username" required="required"></p>
			<p><input type="email" name="email" placeholder="t1@t1.com" required="required"></p>
			<p>
				<label><input type="radio" name="gender" value="남성"required="required">남성</label>
				<label><input type="radio" name="gender" value="여성"required="required">여성</label>
			</p>
			<p><input type="submit" value="가입신청"></p>
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
				contst row ='${row}'
				alert(row !=0 ? '가입성공' : '가입실패')
				location.href = '${cpath}'
			
			</script>
		
		</c:if>
	
	
	
</body>
</html>