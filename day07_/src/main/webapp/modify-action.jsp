 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp" %>

	
	
	<%--
		update mcdonald
			set
				name =?,
				price =?,
				imgName =?,
				category = ?,
				memo =?
			where
				idx =?
	 --%>
	
	
	<jsp:useBean id="dto" class="mcdonald.McdonaldDTO"></jsp:useBean>
	<jsp:setProperty property="*" name="dto"/>
	
	<c:set var="row" value="${dao.update(dto) }"></c:set>
	<h3>${row != 0 ? '수정성공' : '수정실패' }</h3>
	<a href="${cpath }/view.jsp?idx=${dto.idx}"><button>상세보기 페이지로 이동</button></a>	
	
</body>
</html>