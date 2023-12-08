<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>quiz1 두 수의 덧셈 결과</h1>
		<hr>
		
		
		
		
	
		
		<%
		int sum = 0;
		String n1 = request.getParameter("n1");
		String n2 = request.getParameter("n2");
		
		
			if (n1 != null) {
				if(n2 != null) {
				sum =	Integer.parseInt(n1) + Integer.parseInt(n2);
				}
			}
		
		%>
		<h3>HTML과 Java코드가 하나의 페이지에 작성되어 있고, 순서가 섞여도 항상 자바부터 수행된다</h3>
		<h3>Java코드는 웹 서버에서 실행되고, HTML코드느 클라이언트의 브라우저에서 실행된다</h3>
			<form action="">
		
			<input type="number" name="n1" placeholder="n1" min="0" max="99" required="required" >
			
			+
			
			<input type="number" name="n2" placeholder="n2" min="0" max="99"  required="required">
			<input type="submit" vlaue="=">
				<h3><%= sum %></h3>
			
		 </form>
</body>
</html>