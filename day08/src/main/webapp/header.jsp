<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="cpath" value="${pageContext.request.contextPath }"></c:set>
    <jsp:useBean id="dao" class="youtube.YoutubeDAO"> </jsp:useBean>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{
		background-image: linear-gradient(
		rgba(0,0,0,0.4), rgba(0,0,0,0.4)), url("./image/T1back.png");
		padding: auto;
		margin: auto;
		z-index:1;
	}
	
	

	a{
		text-decoration: none;
		color: inherit;
	}
	
	a:hover{
		text-decoration: none;
	}
	
	.frame{
		background-color: rgb(243,239,204);
		
		width: 900px;
		margin: 0 auto;
		
	}
	
	
	header{
		display: flex;
		justify-content: space-between;
		align-items: center;
		
	}
	.da{
		display:flex;
		align-items:center;
	}
	
	
	.da > a > img{
		width: 43px;
		height: 43px;
		border-radius: 15px;
		
		
	}
	.da > a > img >a{
		display:flex;
		align-items:center;
		
	}
	
	header > img {
		width: 250px;
		height: 120px;
		
	}
		
	nav > ul {
		display: flex;
		width : 300px;
		list-style: none;
		padding: 0;
	}
	
	nav > ul > li {
		flex: 1;
		
	}
	nav > ul > li > a {
		background-color : #F3EFCC;
		border-radius: 15px;
		font-weight: bold;
		
	}
	
	div.box{
		
		display: flex;
		flex-flow: wrap;
	
	}
	div.item{
		box-sizing: border-box;
		width: 200px;
		margin: 10px;
		padding: 10px;
		text-align: center;
	}
	
	div.detail{
		display: flex;
		flex-flow: column;
		justify-content: center;
		align-items: center;
	}
	
	div.sb{
		display: flex;
		justify-content: space-between;
		align-items: center;
	}
	section > div > img{
		width: 900px;
	}
	
	section > h3 {
		margin-left: 350px;
	}
	h1 > img {
		width: 300px;
	}
	h1 > div {
	margin-left: 50px;
	
	}
	.chlogo{
		display: flex;
		align-items:center;
		font-size: 20px;
	}
	.chlogo > img{
		height:30px;
		width:30px;
		border-radius: 50%;	
		
	}
	
	
	.search > p {
		
	
	
	}
	.search >p >  input {
		
		border: 1px solid #bbb;
		border-radius: 15px;
		padding: 10px 290px 10px 50px;
		
		
		font-size: 14px;
	
	}

	
	

</style>
</head>
<body>
	
	<header>
	
		<h1 class="da"><a href="${cpath }"><img alt="" src="./image/T1-4.png">YOUTUBE</a></h1>
			
	<div>
		<form action="" class="search">
			<p><input type="text" placeholder="검색어 입력"></p>
			
		</form>
	
	</div>
			
		
		<nav>
			<ul>
				<li><a href="${cpath }/list.jsp">전체목록</a></li>
				<li><a href="${cpath }/list.jsp?category=구독">구독</a></li>
				<li><a href="${cpath }/list.jsp?category=좋아요한 영상">♥좋아요♥</a></li>
			</ul>
		</nav>
	</header>
	
	
</body>
</html>