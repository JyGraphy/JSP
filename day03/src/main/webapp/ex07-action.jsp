<%@page import="ex07.FoodService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>ex07-action</h1>
	<hr>


	<%
	FoodService service = (FoodService) application.getAttribute("service");
	if (service == null) {
		service = new FoodService();
		application.setAttribute("service", service);
	}
	%>

	<%-- 파라미터 받아서 객체로 저장하기 --%>
	<%-- useBean 액션태그는 자바 객체를 생성함과 동시에 pageContext에 attribute형태로 저장한다 --%>
	<jsp:useBean id="dto" class="ex07.FoodDTO" scope="page"></jsp:useBean>
	<jsp:setProperty property="*" name="dto" />
	


	<%
	int row = service.add(dto);
	if (row != 0) {
		application.setAttribute("list", service.getList());
	}

	response.sendRedirect("ex07-form.jsp");
	%>

</body>
</html>