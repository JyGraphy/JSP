<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add - book</title>
</head>
<body>
	
	<h1>도서 추가</h1>
	<hr>
	
	
	
	<form action="add-action.jsp">
	
		<p><input type="text" name="title" placeholder="제목"></p>
		<p><input type="text" name="author" placeholder="저자"></p>
		<p><input type="text" name="publisher" placeholder="츨판사"></p>
		<p><input type="date" name="publishDate" required="required">(출판일자)</p>
		<p><input type="submit"></p>

	</form>
	
</body>
</html>