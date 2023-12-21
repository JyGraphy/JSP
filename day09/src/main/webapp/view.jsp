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

<section>
	<c:set var="dto" value="${dao.selectOne(param.idx) }"></c:set>
	
	
	<div>
		<div><h4>${dto.name }</h4></div>
		<div><h5>${dto.price }원</h5></div>
	
	</div>
	
	<div>
		
		<div>
			<a href="${cpath }/list.jsp"><button>목록</button></a>
			<a href="${cpath }/modify.jsp?idx=${dto.idx}"><button>수정</button></a>
			<a href="${cpath }/delete.jsp?idx=${dto.idx}"><button>삭제</button></a>
		
		</div>
	
	</div>


</section>

</body>
</html>