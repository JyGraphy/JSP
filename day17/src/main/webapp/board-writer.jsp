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
	<h4>게시글 쓰기</h4>
	<c:if test="${pageContext.request.method == 'GET' }">
		<c:if test="${empty login }">
			<script type="text/javascript">
				alert('로그인 후 게시글을 작성할 수 있습니다')
				location.href = '${cpath}/login.jsp'
			</script>
		</c:if>
		
		<form method="POST">
			<p><input type="text" name="title" placeholder="제목" required="required"></p>
				<input type="hidden" name="writer" value="${login.userid }">
		
			<p>
				<textarea name="content" placeholder="내용작성" rows="10" cols="100"></textarea>
			</p>
			<p><input type="submit" value="작성하기"></p>
		</form>
	</c:if>
	
	<c:if test="${pageContext.request.method == 'POST' }">
		<jsp:useBean id="dto" class="board.BoardDTO"></jsp:useBean>
		<jsp:setProperty property="*" name="dto"/>
		<c:set var="row" value="${boardDAO.insert(dto) }"></c:set>
		<c:redirect url="/board.jsp"></c:redirect>
	
	
	</c:if>
</body>
</html>