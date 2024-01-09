<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	
	<fieldset>
		<c:set var="dto" value="${board2DAO.selectOne(param.idx) }"></c:set>
		
		<div>${dto.idx } | ${dto.title } | ${dto.writer } | ${dto.writeDate} | ${dto.viewCount} | ${dto.ipaddr }</div>
		<div><img alt="" src="${cpath }/reviewImage/${dto.image }"></div>
		<div><pre>${dto.content }</pre></div>
	</fieldset>
	
	
	<div>
		<a href="${cpath }/index.jsp"><button>목록</button></a>
	</div>
	<br>
	
</body>
</html>