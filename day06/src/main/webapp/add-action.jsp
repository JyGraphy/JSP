<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<jsp:useBean id="dto" class="phonebook.PhoneBookDTO"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>

<c:set var="row" value="${dao.insert(dto) }"></c:set>

<c:if test="${row != 0 }">
	<c:redirect url="/list.jsp"> </c:redirect>
	<%--c:redirect에서는 cpath 경로를 명시하지 않는다 --%>

</c:if>

<c:if test="${row == 0 }">
	<script>
		alert('추가 실패')
		<!--locattion.href = '${cpath}' -->
		history.back() // 브라우저의 뒤로가기 버튼
		
	</script>
</c:if>

</body>
</html>