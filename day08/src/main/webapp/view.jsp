<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<section class="frame">
		<c:set var="dto" value="${dao.selectOne(param.idx) }"></c:set>
	
	<div class="detail">
		
		<div><pre>${dto.tag }</pre></div>
		<div><h3>${dto.title }</h3></div>
		<div class="chlogo">
			<img alt="" src="./image/${dto.chtitle == 't1' ? 'T1유튜브로고.jpg' : 'lck로고.jpg' }">
			<h4>${dto.chtitle }</h4></div>
		</div>
		
		<div class="sb">
			<div>
				<a href="${cpath }/list.jsp"><button>전체 목록</button></a>
			</div>
			<div>
				<a href="${cpath }/modify.jsp?idx=${dto.idx}"><button>수정</button></a>
				<a href="${cpath }/delete.jsp?idx=${dto.idx}"><button>삭제</button></a>
			</div>
		</div>
	</section>
</body>
</html>