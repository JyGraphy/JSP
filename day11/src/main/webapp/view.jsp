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

<section>
	<c:set var="dto" value="${dao.selectOne(param.id) }"></c:set>
	
	<div class="view">
			<div>
				<img alt="" src="artist_img/${dto.artist_img }" height="120">
			</div>
			<div>
				<p><b>아티스트 : ${dto.artist_name }</b></p>
				<p><b>앨범 : ${dto.album_name }</b></p>
				<h3>${dto.name }</h3>
				<sub>${dto.isTitle == 1 ? '타이틀' : '수록곡'   }</sub>
			</div>
	</div>
	
	<div>
		<pre>${dto.lyrics }</pre>
	</div>
	
	
</section>
</body>
</html>