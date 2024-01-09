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
	<c:set var="row" value="${board2DAO.delete(param.idx) }"></c:set>
	<script type="text/javascript">
		const row ='${row}'
		
		if(row != 0){
			alert("삭제 완료")
			location.href = '${cpath}'
			
		}else{
			alert("삭제 실패")
			history.go(-1)
			// history.back()를 사용해도 된다
		}
	
	</script>






</body>
</html>