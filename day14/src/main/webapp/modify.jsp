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
		<h3>정보수정 (modify.jsp)</h3>
		<c:set var="dto" value="${dao.selectOne(param.userid) }"></c:set>
		
		<form action="modify-action.jsp" method="POST" >
			<p><input type="text" name="userid" value="${dto.userid }" placeholder="ID" required="required" readonly="readonly"></p> 
			<p><input type="password" name="userpw" value="${dto.userpw }" placeholder="Password" required="required" autofocus="autofocus"></p>
			<p><input type="text" name="username" value="${dto.username }" placeholder="Name" required="required"></p>
			<p><input type="text" name="email" value="${dto.email }" placeholder="foo@bar.com" required="required"></p>
			<p>
				<label><input type="radio" name="gender" value="남성" value="${dto.gender == '남성' ? checked : '' }" required="required">남성</label>
				<label><input type="radio" name="gender" value="여성" value="${dto.gender == '여성' ? checked : '' }" required="required">여성</label>
			</p>
			<p><input type="submit">제출</p>
		</form>
	</section>


</body>
</html>