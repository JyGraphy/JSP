<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	
	<fieldset>
		<c:set var="dto" value="${board2DAO.selectOne(param.idx) }"></c:set>
		
		<div>${dto.idx } | ${dto.title } | ${dto.writer } | ${dto.writeDate} | ${dto.viewCount} | ${dto.ipaddr }</div>
		<div><img alt="" src="${cpath }/reviewImage/${dto.image }"></div>
		<div><pre>${dto.content }</pre></div>
	</fieldset>
	
	
	<div>
		<a href="${cpath }/index.jsp"><button>목록</button></a>
	</div>
	
	<div>
		<!-- if문을 걸어서 작성자와 아이디가 일치하면 수정과 삭제가 보이도록 한다 -->
		<c:if test="${dto.writer == login.userid }">
			<a href="${cpath }/modify.jsp"><button>수정</button></a>
			<a class="deleteBtn" 
			idx="${dto.idx }"
			href="${cpath }/delete.jsp?idx=${dto.idx }"><button>삭제</button></a>
		</c:if>
	</div>
	
	
	<script type="text/javascript">
		
		// 1)문서 전체에서 a태그 중에서 클래스가 deleteBtn인 모든 요소를 nodeList 형태로 불러온다 --> 
		const deleteBtnList = document.querySelectorAll('a.deleteBtn')
		// 2)이벤트 함수를 정의
		const deleteHandler = function(event) {
			event.preventDefault()			// 이벤트 기본 작동을 막는다 (a의 기본작동 : 링크 페이지 이동)
			let target = event.target		// 이벹트 대상을 target에 저장한다
			// 클릭된 요소의 클래스에 deleteBtn이 포함되어 있지 않다면 반복을 수행
			while (target.classList.contains('deleteBtn') == false) {
				target = target.parentNode		// 현재 target의 상위 요소(부모 노드)를 target에 저장한다
			}
			console.log(target)
			const idx = target.getAttribute('idx')					// target의 idx를 저장
			const url = target.href									// target의 href를 저장
			const flag = confirm(idx + '번 게시글을 삭제하시겠습니까?')	// 사용자에게 확인/취소 묻기
			if (flag) {												// 만약, 확인을 클릭했으면
				location.href = url									// 브라우저의 주소창을 <a href="">의 값으로 변경 (페이지 이동)
			}
		}
		//3) deleteBtnList의 모든 요소를 element라고 할때, element를 클릭하면 deleteHandler가 실행되도록 연결
		deleteBtnList.forEach(element => element.onclick = deleteHandler)
	</script>
	
</body>
</html>