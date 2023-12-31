<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02</title>
</head>
<body>
	<h1>c:forEach</h1>
	<hr>
	
	<h3>컬렉션 반복할 때 횟수 참조하기</h3>
	
	
	<table border="1" cellpadding="10" cellspacing="0">
		<tr>
			<th>var</th>
			<th>status.index</th>
			<th>status.conut</th>
			<th>status.first</th>
			<th>status.last</th>
		</tr>
		<%
			String[] arr = {"제우스", "오너", "페이커", "구마유시","케리아"};
			pageContext.setAttribute("arr", arr);
		
		%>
		<c:forEach var="name" items="${arr }" varStatus="st">
		<!-- varStatus 부분은 이름을 맞추어 주어야 한다 -->
		<tr bgcolor="${st.count mod 2 == 0 ? 'lightpink' : 'lightskyblue' }">
			<td>${name }</td>
			<td>${st.index }</td>
			<td>${st.count }</td>
			<td>${st.first }</td>
			<td>${st.last }</td>
		</tr>
		</c:forEach>	
	</table>
	
	<c:forEach var="i" begin="10" end="50" step="5">
		<p> i : ${i }</p>
	</c:forEach>
	
	
	<form action="">
		<select>
			<c:forEach var="name" items="${arr }">
				<option>${name }</option>
			</c:forEach>
		</select>
	</form>
	
	<%
		// application 내장 객체를 이용하여 webapp 하위 요소의 절대 경로를 가져올 수 있다
		// 이클립스 프로젝트가 아니라, 톰캣에서 실핼중인 프로젝트의 경로를 반환함에 주의
		String imagePath =  application.getRealPath("image");
		out.print("<h4>" + imagePath +"</h4>");
		
	
		File dir = new File(imagePath);

		String[] fileNames = dir.list();
		pageContext.setAttribute("fileNames", fileNames);
	%>
	
	<style>
	div.box{
		width: 100%;
		display: flex;
		flex-flow: wrap;
	}
	div.item{
		box-sizing: border-box;
		width: 170px;
		height: 170px;
		margin : 10px;
		display: flex;
		flex-flow: column;
		justify-content: center;
		align-items: center;
		border: 1px solid gray;
		overflow: hidden;
		transition-duration : 0.5s;
	}
	div.item :hover {
	transform : scale(1.3) rotate(3600deg);
	transition-duration : 0.5s;
	}
	div.item:hover {
	
	background-color: #eee;
	cursor: pointer;
}

	
	</style>
	<div class="box">
		<c:forEach var="file" items="${fileNames }">
		
			<div class="item">
				<img src="image/${file}" height="100">
				<p><b>${file }</b></p>
			</div>
		</c:forEach>
	
	</div>
	
</body>
</html>