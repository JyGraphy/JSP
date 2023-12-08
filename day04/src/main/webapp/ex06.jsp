<%@page import="java.lang.reflect.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ex06.MemberDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>ex06 대문 페이지</h1>
	<hr>
	
	
	<%
		MemberDTO login= (MemberDTO) session.getAttribute("login");
		String welcome = String.format("T1의 %s 입니다", login == null ? "감독" : login.getName());
		
	
	
	
	%>
	
	<div>
		<img alt="" src="<%= login == null ? "name/김정균.jpeg" : login.getImgPath()  %>" height="300">		
		<h3><%= welcome %></h3>
	
	</div>
	
	
	
	<a href="ex06-form.jsp" ><button>로그인</button></a>
</body>
</html>