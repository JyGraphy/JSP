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
		<h3>영상 추가</h3>
			<form action="add-action.jsp">
				<p>
					<label><input type="radio" name="category" value="구독" required="required">구독</label>
					<label><input type="radio" name="category" value="좋아요한 영상" required="required">좋아요한영상</label>
				</p>
					<p><input type="text" name="title" placeholder="타이틀" required="required"></p>
					<p><input type="text" name="chtitle" placeholder="채널명" required="required"></p>
					<p><input type="text" name="imgName" placeholder="썸네일" required="required"></p>
					<p><textarea rows="" cols="" name="tag" placeholder="태그" required="required"></textarea></p>
					<p><input type="submit"></p>
			</form>
	</section>
</body>
</html>