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

	<jsp:useBean id="dto" class="youtube.YoutubeDTO"></jsp:useBean>
	<jsp:setProperty property="*" name="dto"/>
	
	<c:set var="row" value="${dao.update(dto) }"></c:set>
	<h3>${row != 0 ? '수정성공' : '수정실패' }</h3>
	<a href="${cpath }/view.jsp?idx=${dto.idx}"><button>상세보기 페이지로 이동</button></a>
</body>
</html>