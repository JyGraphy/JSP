<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.* ,board2.*" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <c:set var="cpath" value="${pageContext.request.contextPath }"></c:set>
    <c:set var="memberDAO" value="${MemberDAO.getInstance() }"></c:set>
    <c:set var="board2DAO" value="${Board2DAO.getInstance() }"></c:set>
 	<c:set var="fileUtil" value="${FileUtil.getInstance() }"></c:set>
 	
 <% request.setCharacterEncoding("UTF-8"); %>
 <% response.setCharacterEncoding("UTF-8"); %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
ul {
	display: flex;
	text-align: center;
	
}
li {
	justify-content: space-between;
	list-style: none;
}

</style>
</head>
<body>
	<header>
		<h1><a href="${cpath }">게시판</a></h1>
		<div>
		${login.userid }
		</div>
		<nav>
			<ul>
				<li><a href="${cpath }/login.jsp">로그인</a></li>
				<li><a href="${cpath }/logout.jsp">로그아웃</a></li>
				<li><a href="${cpath }/join.jsp">회원가입</a></li>
				<li><a href="${cpath }/joinout.jsp">회원탈퇴</a></li>
			</ul>
		</nav>
	</header>
