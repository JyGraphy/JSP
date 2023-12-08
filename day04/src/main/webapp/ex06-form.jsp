<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.item {
	display: flex;
	justify-content: center;
	border: 1px solid darkgrey;
	font-size: 20px;
	height: 120px;
	line-height: 120px;
	width: 300px;
	margin: 10px;

}


</style>
</head>
<body>
	<h1>사용자 선택</h1>
	<hr>
	
	<div class="item">
	<a href="ex06-action.jsp?name=제우스"><img alt="" src="name/제우스.jpeg" height="100">제우스</a>
	</div>
	
	<div class="item">
	<a href="ex06-action.jsp?name=오너"><img alt="" src="name/오너.jpeg" height="100">오너</a>
	</div>
	
	
	<div class="item">
	<a href="ex06-action.jsp?name=페이커"><img alt="" src="name/페이커.jpeg" height="100">페이커</a>
	</div>
	
	
	<div class="item">
	<a href="ex06-action.jsp?name=구마유시"><img alt="" src="name/구마유시.jpeg" height="100">구마유시</a>
	</div>
	
	
	<div class="item">
	<a href="ex06-action.jsp?name=케리아"><img alt="" src="name/케리아.jpeg" height="100">케리아</a>
	</div>

</body>
</html>