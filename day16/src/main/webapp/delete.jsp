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
	<jsp:useBean id="dto" class="reply.ReplyDTO"></jsp:useBean>
	<jsp:setProperty property="*" name="dto"/>
	<jsp:setProperty property="writer" name="dto" value="${login.userid }"/>
	
	<c:set var="row" value="${replyDAO.delete(dto) }"></c:set>
	
	<c:if test="${row != 0 }">
		<c:redirect url="/view.jsp?idx=${dto.board_idx }"></c:redirect>
	</c:if>
	
	
</body>
</html>