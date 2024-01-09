<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<h1>ex01-form</h1>
 	<hr>
 	
 	<h3>파일을 첨부하여 form 제출하기</h3>
 	
 	<h3>application/x-www-form-urlemcoded (method:POST일때 기본 전송 형식)</h3>
 	<h3>multipart/form-data(파일을 포함할 경우 변경해주는 전송 형식)</h3>
 	
 	<ul>
 		<li>input[type="file"] 요소는 value를 지정할 수 없다</li>
 		<li>파일이 하나라도 포함되어 있으면  multipart/form-data 형식을 지정해야 한다</li>
 		<li>multipart/form-data는 JSP내장객체 request로 파일을 추출할 수 없다</li>
 	</ul>
 	
 	
 	<fieldset>
 		<!--<form method="POST" enctype="application/x-www-form-urlencoded" action="ex01-action.jsp">  -->
 		<form method="POST" enctype="multipart/form-data" action="ex01-action.jsp">
 			<p><input type="text" name="test1" value="T1로고.png"></p>
 			<p><input type="file" name="profileImg" ></p>
 			<!-- value값을 지정할 수 없다 -->
 			<p><input type="submit" ></p>
 		
 		</form>
 	
 	</fieldset>
</body>
</html>