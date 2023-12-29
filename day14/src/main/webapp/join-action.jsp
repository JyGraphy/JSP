<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>


	<jsp:useBean id="dto" class="day14.MemberDTO"></jsp:useBean>
	<jsp:setProperty property="*" name="dto"/>

	<c:set var="row" value="${dao.insert(dto) }"></c:set>
	<!--${row }  -->
	
	<c:if test="${row !=0 }">
		<c:redirect url="/list.jsp"></c:redirect>
	</c:if>
	
	<script type="text/javascript">
		alert('가입이 처리되지 않았습니다')
		history.go(-1)
	</script>
</body>
</html>