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
	<main>
		<h3>내가 쓴 글</h3>
		
	
	<table id="boardList">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>날짜</th>
				<th>삭제여부</th>
				
			</tr>
		</thead>
		<tbody>
			<c:set var="list" value="${board2DAO.selectListByWriter(login.userid) }"></c:set>
			<c:forEach var="dto" items="${list }">
			<tr>
				 <td>${dto.idx }</td>
				 <td>
				 	<a href="${cpath }/view.jsp?idx=${dto.idx}">
				 	${dto.title }
				 	${not empty dto.image ? '🎞' : '' }
				 	</a>
				 
				 </td>
				 <td>${dto.writer}</td>
				 <td>${dto.viewCount }</td>
				 <td>${dto.writeDate }</td>
				 <td>${dto.deleted == 1 ? 'Y' : 'X'}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	
	
	
	
	
	</main>
</body>
</html>