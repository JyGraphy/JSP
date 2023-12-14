<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="header.jsp" %>

	
	<section class="frame">
		<h3>항목 추가</h3>
			<form action="add-action.jsp">
			<p>
				<label><input type="radio" name="catrgory" value="버거" required="required">버거</label>
				<label><input type="radio" name="catrgory" value="음료" required="required">음료</label>
			</p>
				<p><input type="text" name="name" placeholder="상품이름" required="required"></p>
				<p><input type="number" name="price" placeholder="상품가격" required="required"></p>
				<p><input type="text" name="imgName" placeholder="그림파일이름" required="required"></p>
				<p><textarea name="memo" placeholder="상세 설명" required="required"></textarea></p>
				<p><input type="submit"></p>			
				</form>
	</section>
	
</body>
</html>