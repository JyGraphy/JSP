<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#root {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	display: flex;
	background-color: #f5f6f7;
}

.flex {
	display: flex;
}

.Left {
	width: 200px;
	border-right: 1px solid gray;
	height: 100%
}
.left {
	width: 200px;
	height: 100%

}
.right{
	border-left: 1px solid gray; 
}
.right img {
	height: 300px;
}
</style>
</head>
<body>

	<div id="root">
		<h1>리다이텍트를 활용하여 새로 요청하기</h1>
		<hr>

		<div class="flex">
			<div class="Left">
				<form action="">
					<select name="name">
						<option>제우스</option>
						<option>오너</option>
						<option>페이커</option>
						<option>구마유시</option>
						<option>케리아</option>

					</select>
					<button>확인</button>

				</form>

			</div>
			<div class="right">
			<%
				String name = request.getParameter("name");
			
				if(name != null) {
					name = URLEncoder.encode(name, "UTF-8");
					response.sendRedirect("ex05-show.jsp?name=" + name);
				}
			
			%>
			</div>
		</div>
	</div>
</body>
</html>