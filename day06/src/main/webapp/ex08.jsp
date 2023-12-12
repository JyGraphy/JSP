<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex08</title>
</head>
<body>
	<h1>JSTL Core</h1>
	<hr>
	
	
	<fieldset>
	
	<legend>c:set</legend>
	<h3>var 이름으로 value 객체를 생성하여, scope에 attribute로 등록한다 (기본값은 page)</h3>
	<c:set var="t1" value="최우제" scope="page"></c:set>
	<c:set var="t2" value="문형준" scope="request"></c:set>
	<c:set var="t3" value="이상형" scope="session"></c:set>
	<c:set var="t4" value="이민형" scope="application"></c:set>
	<!--  value에 모든 객체의 값, EL Tag도 넣을 수 있다 -->
	<p>t1 : ${pageScope.t1 }, ${t1 }</p>
	<p>t2 : ${requestScope.t2 }, ${t2 }</p>
	<p>t3 : ${sessionScope.t3 }, ${t3 }</p>
	<p>t4 : ${applicationScope.t4 }, ${t4 }</p>
	
	</fieldset>
	<br>
	
	<fieldset>
	<legend>c:if</legend>
	<h3>test의 조건이 true이면 태그 내부 코드를 수행한다. else는 없음</h3>
	<p>
	 ${t2 }의 나이는 ${t3 }살이거
	<c:if test="${t3 >= 20} ">성인</c:if>
	<c:if test="${t3 < 20} ">미성년자</c:if>
	입니다
	</p>
	</fieldset>
	<br>
	
	<fieldset>
		<legend>c:choose</legend>
		<h3>여러 조건 중 하나를 수행한다. 하위 태그로 c:when, c:otherwise가 있다</h3>
		
		<!--  if else  -->
		<c:choose>
			<c:when test="${t3 > 0 }">양수</c:when>
			<c:when test="${t3 < 0 }">음수</c:when>
			<c:otherwise>Zero</c:otherwise>
		
		</c:choose>
	</fieldset>
	
	<fieldset>c:forEach
	<h3>items객체의 각 요소를 var에 저장하여, items의 길이만큼 반복문을 수행한다</h3>
	<%
	
		String[] arr = {"제우스", "오너", "페이커", "구마유시", "케리아"};
		pageContext.setAttribute("arr", arr);
	
	
	%>
	<ul>
	<c:forEach var ="name" items="${arr }">
	<li>${name }</li>
	</c:forEach>
	</ul>
	</fieldset>
	<br>
	
	<fieldset>
		<legend>c:forTokens</legend>
		<h3>문자열을 구분자로 분리하여 (split) 각 값에 대한 반복문을 수행한다</h3>
		<c:set var="text" value="T1 소속 대한민국의 리그 오브 레전드 프로게임단. 팀 약자는 T1"></c:set>
		<c:forTokens items="${text }" var="word" delims="">		
		<p>${word }</p>
		</c:forTokens>
	</fieldset>
	<br>
	
	<fieldset>
		<legend>c:redirect</legend>
		<h3>지정한 페이지로 리다이렉트한다</h3>
		&lt; c:redirect url="https://namu.wiki/w/T1/%EB%A6%AC%EA%B7%B8%20%EC%98%A4%EB%B8%8C%20%EB%A0%88%EC%A0%84%EB%93%9C"/>
	
	
	</fieldset>
	
	
	
</body>
</html>