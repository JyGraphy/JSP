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
	<details open="open">
		<summary>paging info</summary>
		<br>
		<fieldset>
		<c:set var="boardCount" value="${board2DAO.selectCount(param.search) }"></c:set>
		<c:set var="paramPage" value="${empty param.page ? 1 : param.page  }"></c:set>
		<c:set var="paging" value="${Paging.newInstance(paramPage, boardCount) }"></c:set>
		<c:set var="list" value="${board2DAO.selectList(param.search, paging) }"></c:set>
		
		
		<ul>
			<li>게시글 개수 : ${boardCount }</li>
			<li>요청받은 페이지 : ${paramPage }</li>
			<li>paging.offset : ${paging.offset }</li>
			<li>paging.fetch : ${paging.fetch }</li>
			<li>paging.pageCount : ${paging.pageCount }</li>
			<li>paging.begin : ${paging.begin }</li>
			<li>paging.end : ${paging.end }</li>
		</ul>
	</fieldset>
	</details>
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
	<div class="center">
	<c:if test="${paging.prev }">
		<a href="${cpath }?page=${paging.begin -10}&search=${param.search}">[이전]</a>
	</c:if>
		<c:forEach var="i" begin="${paging.begin }" end="${paging.end }">
			<a class="${paging.page == i ? 'bold' : '' }"
				href="${cpath }?page=${i}&search=${param.search}">[${i }]</a>
		</c:forEach>
		<c:if test="${paging.next }">
			<a href="${cpath }?page=${paging.end + 1}&search=${param.search}">다음</a>
		</c:if>
	</div>
		
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