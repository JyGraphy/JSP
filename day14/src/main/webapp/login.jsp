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
		<h3>login.jsp</h3>
		<form action="login-action.jsp" method="PSOT">
			<p><input type="text" name="userid" placeholder="ID" required="required" autofocus="autofocus" ></p>
			<p><input type="password" name="userpw" placeholder="password" required="required"></p>
			<p><input type="submit" value="로그인"></p>
		</form>
	</section>
</body>
</html>