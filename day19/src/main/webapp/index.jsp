<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<style>
	table #boardList {
		border-collapse: collapse; 
	}
	
	table #boardList {
		
		width: 900px;
		margin: 20px auto;
	}
	table #boardList > thead {
		background-color: black;
		color: white; 
	}
	table #boardList toby > tr {
		border-bottom : 1px solid grey;
		transition-duration : 1s;
	}
	table #boardList tody > tr:hover {
	background-color: #lightpink;
	transition-duration : 1s;
}

table #boardList td,
table #boardList th {
	padding: 10px;
	text-align: center;
}

table#boardList > thead > tr > th:nth-child(1) { width:10%; }
table#boardList > thead > tr > th:nth-child(2) { width:50%; }
table#boardList > thead > tr > th:nth-child(3) { width:10%; }
table#boardList > thead > tr > th:nth-child(4) { width:20%;}
table#boardList > thead > tr > th:nth-child(5) { width:10%; }

table#boardList > toby > tr > td:nth-child(2) {text-align: left;}

.sb {
	width: 900px;
	margin: 20px auto;
	display: flex;
	justify-content: space-between;

}

a{
	text-decoration: none;
	color: inherit;

}
a:hover {
	text-decoration: underline;
}
table#boardList a{
	display: inline-block;
	width: 90%;
}

table#boardList a:hover {
	text-decoration: none;
}

div {
	text-align: right;
	padding-right: 20px;
	height: 30px; 

}


</style>
<main>
	<h3>대문페이지</h3>
	<div>${login.userid }</div>
	<table id="boardList">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>날짜</th>
			</tr>
		</thead>
		<tbody>
			<c:set var="list" value="${board2DAO.selectList(param.search) }"></c:set>
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
			</tr>
			</c:forEach>
		</tbody>
	</table>
		
		<div class="sb">
			<div>
				<form action="">
					<input type="search" name="search"   value="${param.search }" placeholder="검색어 입력">
					<input type="submit" value="검색">				
				</form>
			</div>
			<div>
				<a href="${cpath }/write.jsp"><button>새 글 작성</button></a>
			</div>
		</div>
		
</main>


</body>
</html>