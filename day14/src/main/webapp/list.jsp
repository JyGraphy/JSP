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

	<section class="frame">
		<h3>list.jsp</h3>
		<table>
			<thead>
			<tr>
				<td>ID</td>
				<td>Password</td>
				<td>Name</td>
				<td>Gender</td>
				<td>Email</td>
			</tr>
			</thead>
			<tbody>
				<c:set var="list" value="${dao.selectList() }"></c:set>
				<c:forEach var="dto" items="${list }">
				<tr>
					<td>${dto.userid }</td>
					<td>${dto.userpw }</td>
					<td>${dto.username }</td>
					<td>${dto.gender }</td>
					<td>${dto.email }</td>
					<td>
						<a href="modify.jsp"><button>수정</button></a>
						<a class="deleteLink" href="${cpath }/delete.jsp?userid=${dto.userid}">
							<button>삭제</button>
						</a>
					</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</section>
	<script type="text/javascript">
		function deleteHandler(event) { // 발생한 행위가 event
			event.preventDefault()		// event의 기본작동을 막는다
										// a를 클릭했을 때 기본작동(페이지 이동)을 막아버린다
			const flag = confirm('정말 삭제하시겠습니까?')	// 삭제할지 물어보고 대답에 따라 true/false에 저장
			if(flag){	
				// 클릭당한 태그 요소가 event.target
				// 클릭당한요소는 button이며, button의 상위요소 a태그
				const a = event.target.parentNode
				
				// a의 href속성으로 이동시킨다
				location.href = a.href
			}	
		}
		
		// 문서 내부의 a태그 중에서 클래스가 deleteLink인 모든 요소를 불러와서
		const aList = document.querySelectorAll('a.deleteLink')
		
		// aList내부의 각 요소를 a라고 할때, a를 클릭하면 실행되는 함수 자리에 deleteHandler를 할당한다
		aList.forEach(a => a.onclick = deleteHandler)
	 
	</script>	
	
</body>
</html>