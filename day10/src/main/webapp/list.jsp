<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{
		border: 2px solid black;
		border-collapse:collapse; 
	}
	tr{
		border-bottom: 1px solid gray;
	}
	td{
		border: 1px solid gray;
	}
	thead {
	background-color: #dadada;
}
	tbody > tr:hover {
	background-color: #eee;
	color: black;
	cursor: pointer;
}
.sb {
	display: flex;
	justify-content: space-between;
}


</style>
</head>
<body>
<div class="sb">
<form action="list.jsp">
	<p>
		<input type="search" name="search" placeholder="검색어입력"
				autofocus value="${param.search }">
		<input type="submit" value="검색">
	</p>
	
</form>
	<div>
		<a href="add.jsp"><button>추가</button></a>
	</div>

</div>


<table>

	
	
	<thead>
	<tr>
		<th>ID</th>
		<th>ARTIST_NAME</th>
		<th>ALBUM_NAME</th>
		<th>NAME</th>
		<th>PLAYTIME</th>
		<th>기능</th>
	</tr>
	</thead>
	<tbody>
<jsp:useBean id="dao" class="bugs.BugsDAO"></jsp:useBean>
<c:set var="list" value="${dao.selectAll(param.search) }"></c:set>
	<c:forEach var="dto" items="${list }">
	
	<tr bgcolor="${dto.isTitle == 1 ? 'lightpink' : 'white' }">
		<td>${dto.id }</td>
		
		<td>
			<img alt="" src="artist_img/${dto.artist_img }" height="50">
			${dto.artist_name }
		</td>
		
		<td>
			<img alt="" src="album_img/${dto.album_img }" height="50">
			${dto.album_name }
		</td>
		
		<td>${dto.name }</td>
		<td>${dto.playTime }</td>
		<td>
			<a href="view.jsp?id=${dto.id} "><button>상세조회</button></a>
			<a href="modify.jsp?id=${dto.id} "><button>수정</button></a>
			<a href="delete.jsp?id=${dto.id} "><button>삭제</button></a>
		</td>
	
	</tr>
	</c:forEach>
	</tbody>

</table>
</body>

</html>