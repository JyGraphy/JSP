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
		<h3>회원가입 (join)</h3>
		<form action="join-action.jsp" method="POST" >
			<p><input type="text" name="userid" placeholder="ID" required="required"></p>
			<p><input type="password" name="userpw" placeholder="Password" required="required"></p>
			<p><input type="text" name="username" placeholder="Name" required="required"></p>
			<p><input type="text" name="email" placeholder="foo@bar.com" required="required"></p>
			<p>
				<label><input type="radio" name="gender" value="남성" required="required">남성</label>
				<label><input type="radio" name="gender" value="남성" required="required">여성</label>
			</p>
			<p><input type="submit">제출</p>
		</form>
	</section>
</body>
</html>