<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp" %>
    
    <c:if test="${pageContext.request.method =='GET' }">
    	<form method = "POST">
    		<p><input type="text" name="userid" placeholder="ID" required="required" autofocus="autofocus"></p>
    		<p><input type="password" name="userpw" placeholder="Password" required="required" ></p>
    		<p><input type="submit" value="로그인"></p>
    		
    	</form>
    </c:if>
    
    <c:if test="${pageContext.request.method =='POST' }">
    	<jsp:useBean id="dto" class="member.MemberDTO"></jsp:useBean>
    	<jsp:setProperty property="*" name="dto"/>
    	<c:set var="login" value="${memberDAO.login(dto) }" scope="session"></c:set>
    	<c:redirect url="/"></c:redirect>
    </c:if>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>