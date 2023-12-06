<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>파라미터 입력을 활용한 UP & DOWN</h1>
		<hr>
		
		<%@ page import="java.util.Random" %>
		<%!
			private Random ran = new Random();			// 매번 새로 생성할 수 없기 때문에 선언부
			private int count = 0;						// 진행하는 동안 횟수가 유지 되어야 하기 때문에
			private int cpu = ran.nextInt(100) + 1;		 // 입력마다 값이 바뀌면 안되니까 (유지되어야 한다)
		
		//	String test = request; // 선언부에서는 request 및 response에 접근 불가
		%>
		
		<%
			if (request.getParameter("reset") != null){
				count =0;
			}
		
		
			String input = request.getParameter("user");	// 입력값은 매번 새로 바뀐다
			int user;									// 사용자 입력ㄱ밧은 매번 변경되기도 하고, request로 받아와야 한다
			String msg = "현재 상태 0회";
			
			
			
			if (input != null) {
				count++;
				user = Integer.parseInt(input);
				
				if(user == cpu) {
					msg = String.format("정답 %d회만에 정답", count);
				}
				else if (user < cpu) {
					msg = String.format("UP. (%d회 도전중)", count);
				}
				else {
					msg = String.format("DOWN. (%d회 도전중)", count);
				}
			}
		
		%>
		
		<form action="">
		
		<p><input type="number" name="user" min="1" max="100" required="required" autofocus="autofocus">
			<input type="submit" >
			<a href="<%= request.getRequestURI()%>">
			<input type="button" name="reset" value="초기화"></a>
		
		
		</p>
		
		
		
		
		</form>
		
		<h3><%= msg %></h3>
</body>
</html>