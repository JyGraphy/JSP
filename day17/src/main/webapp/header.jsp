<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.*,board.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="cpath" value="${pageContext.request.contextPath }"></c:set>
<c:set var="memberDAO" value="${MemberDAO.getInstance() }"></c:set>
<c:set var="boardDAO" value="${BoardDAO.getInstance() }"></c:set>

<%request.setCharacterEncoding("UTF-8"); %>
<%response.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<h2><a href="${cpath }">게시판 만들기</a></h2>
		<h3>${login.userid }</h3>
		<div>${login.userid }</div>
		<nav>
			<ul>
				<li><a href="${cpath }/login.jsp">로그인</a></li>
				<li><a href="${cpath }/logout.jsp">로그아웃</a></li>
				<li><a href="${cpath }/join.jsp">회원가입</a></li>
				<li><a href="${cpath }/joinout.jsp">회원탈퇴</a>
				
				
				</li>
				<li><a href="${cpath }/board.jsp">게시판</a></li>
			</ul>
		</nav>
	</header>
</body>
</html>