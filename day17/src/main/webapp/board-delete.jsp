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
	<jsp:useBean id="dto" class="board.BoardDTO"></jsp:useBean>
	<jsp:setProperty property="*" name="dto"/>
	<jsp:setProperty property="writer" name="dto" value="${login.userid }"/>
	
	${boardDAO.delete(dto) }
	<c:redirect url="/board.jsp"></c:redirect>
	
	
	<script type="text/javascript">
		alert('게시글 삭제 실패')
		history.go(-1)
	</script>










</body>
</html>