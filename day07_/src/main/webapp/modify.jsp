<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- 단일 조회할 때의 함수를 이용하여 먼저 단일 객체를 불러온다 --%>

<c:set var="dto" value="${dao.selectOne(param.idx) }"></c:set>

<%-- 항목 추가할때의 form을 불러오고, dto의 값을 이용하여 자동완성 형식으로 채원준다 --%>
<%-- form의 action은 "add-action.jsp " 에서 "modify-action.jsp"로 수정한다 --%>

	<section class="frame">
		<h3>항목 추가</h3>
			<form action="modify-action.jsp">
			<%-- 실행에 필요한 값이 전달되지 않는다면 hidden 형태로 추가로 전달하면 된다 --%>
			<input type="hidden" name="idx" value="${dto.idx }">
			<p>
				<label><input type="radio" name="catrgory" value="버거" ${dto.category == '버거' ? 'checked' : ''}required="required" >버거</label>
				<label><input type="radio" name="catrgory" value="음료" ${dto.category == '음료' ? 'checked' : ''} required="required" >음료</label>
			</p>
				<p><input type="text" name="name" placeholder="상품이름" required="required" value="${dto.name }"></p>
				<p><input type="number" name="price" placeholder="상품가격" required="required"value="${dto.price }"></p>
				<p><input type="text" name="imgName" placeholder="그림파일이름" required="required"value="${dto.imgName }"></p>
				<p><textarea name="memo" placeholder="상세 설명" required="required">${dto.memo }</textarea></p>
				<p><input type="submit"></p>			
				</form>
	</section>


</body>
</html>