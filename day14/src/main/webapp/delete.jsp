<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<c:set var="row" value="${dao.delete(param.userid) }"></c:set>
${row }
<c:if test="${row != 0 }">
	<c:redirect url="/list.jsp"></c:redirect>
</c:if>

</body>
</html>