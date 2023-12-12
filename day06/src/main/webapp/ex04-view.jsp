<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04-view</title>
</head>
<body>
	<h1>게시글 읽기</h1>
	<hr>
	
	<%
		int[] arr = {4, 8, 2, 7, 6};
		out.print("<p>");
		for(int i = 0; i < arr.length; i++){
			out.print(arr[i] + "");
		}
		out.print("</p>");
	%>
	
	
	<pre>
	스포츠에서 유독 반발이 심한 미니멀리즘 스타일 로고인데도 처음부터 반응이 좋았는데, 
	이전 로고가 하도 촌스럽기 그지 없었기 때문이다. 사실, 그것을 감안해도 꽤나 반응이 좋은 편. 
	일부 종목은 SK 텔레콤의 로고가 하단에 병기되어 있다.
	 
	</pre>
	
	<jsp:include page="ex04.jsp"></jsp:include>
</body>
</html>