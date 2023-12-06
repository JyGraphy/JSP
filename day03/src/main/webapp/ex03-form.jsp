<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>업다운 게임 입력</h1>
	<hr>

	<!-- MAIN or View -->
	<form action="ex03-action3.jsp">
		<input type="number" name="user" required="required"
			autofocus="autofocus">
		<button>제출</button>
		<a href= "ex03-action3.jsp? reset=true"> <input type="button"
			value="다시">
		</a>
	</form>

	<h3><%= request.getParameter("msg") %></h3>


</body>
</html>