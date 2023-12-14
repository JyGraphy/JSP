<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<p>${param.idx }번 데이터를 삭제</p>

<c:set var="row" value="${dao.delete(param.idx) }"></c:set>

<c:redirect url="/list.jsp"></c:redirect>
</body>
</html>