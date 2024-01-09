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
		<c:set var="dto" value="${fileUtil.getDTO(pageContext.request) }" ></c:set>
	<c:set var="row" value="${board2DAO.insert(dto) }" />

	<script type="text/javascript">
		const row = '${row}'
		if(row != 0){
		alert('작성성공')
		location.href = '${cpath}'
		}
		else {
			alert('작성실패')
			history.go(-1)			
			
		}
		
		
		
	</script>
	
</body>
</html>