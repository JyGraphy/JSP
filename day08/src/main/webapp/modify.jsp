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
	
	<c:set var="dto" value="${dao.selectOne(param.idx) }"></c:set>

	<section class="frame">
		<h3>항목 추가</h3>
			
			<form action="modify-action.jsp">
				<input type="hidden" name="idx" value="${dto.idx }">
				<p>
					<label><input type="radio" name="category" value="구독" ${dto.category == '구독' ? 'checked' : ''} required="required">구독</label>
					<label><input type="radio" name="category" value="좋아요한 영상" ${dto.category == '좋아요한 영상' ? 'checked' : ''} required="required">좋아요한 영상</label>
				</p>
				<p><input type="text" name="title" placeholder="타이틀" required="required" value="${dto.title }"></p>
				<p><input type="text" name="chtitle" placeholder="채널명" required="required" value="${dto.chtitle }"></p>
				<p><input type="text" name="imgName" placeholder="썸네일" required="required" value="${imgName }"></p>
				<p><textarea rows="" cols="" name="tag" placeholder="태그" required="required">${dto.tag }</textarea></p>
				<p><input type="submit"></p>
			</form>
	</section>


</body>
</html>