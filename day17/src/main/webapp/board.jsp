<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<h4>게시판</h4>
	
	<fieldset>
		<table>
		<c:set var="list" value="${boardDAO.selectList() }"></c:set>
		<c:forEach var="dto" items="${list }">
		
			<tr>
				<td>${dto.idx }</td>
				<td>
					<a href="${cpath }/board-view.jsp?idx=${dto.idx}">${dto.title }</a>
				</td>
				<td>${dto.writer }</td>
				<td>${dto.writeDate }</td>
			
			</tr>
		</c:forEach>
		</table>
		
		<div>
			<a href="${cpath }/board-writer.jsp"><button>게시글 작성</button></a>
		</div>
	
	</fieldset>
</body>
</html>