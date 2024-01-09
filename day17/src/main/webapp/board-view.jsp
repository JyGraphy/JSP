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
	<h4>상세 보기 창</h4>
		<fieldset>
			<c:set var="dto" value="${boardDAO.selectOne(param.idx) }"></c:set>
			<h4>${dto.title } | ${dto.writer } | ${dto.writeDate }</h4>
			<pre>${dto.content }</pre>
		</fieldset>
		<br>
		
		<div>
			<div><a href="${cpath }/board-delete.jsp"><button>삭제하기</button></a></div>
			<div><a href="${cpath }/board.jsp"><button>목록으로</button></a></div>
					
		</div>
			
		
	
</body>
</html>