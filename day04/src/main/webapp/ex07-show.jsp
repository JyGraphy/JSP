<%@page import="ex06.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>ex07-action에서 선택한 값 출력</h1>
		<hr>
		
		
		<img alt="" src="<%= ((MemberDTO) request.getAttribute("dto")).getImgPath() %>" height="150"">
		
		<img alt="" src="${requestScope.dto.imgPath }" height="300">
		<img alt="" src="${dto.imgPath }" height="600">
</body>
</html>