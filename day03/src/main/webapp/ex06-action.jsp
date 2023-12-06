<%@page import="food.FoodService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>ex04-action</h1>
	<hr>


	<%!private FoodService service = new FoodService();%>

	<%-- 파라미터 받아서 객체로 저장하기 --%>
	<jsp:useBean id="dto" class="food.FoodDTO"></jsp:useBean>
	<jsp:setProperty property="*" name="dto" />



	<%-- 함수의 반환값을 저장하기 --%>

	<%
	//자바 객체의 함수를 호출하면서 파라미터 객체를 전달하기
	int row = service.add(dto);
	if (row != 0) {
		session.setAttribute("list", service.getList());
	}
	

	
	// 작업이 끝났으면 원래 페이지로 이동
	response.sendRedirect("ex06-form.jsp");
	%>
	
</body>
</html>