<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>kuzuro 게시판</title>
</head>
<body>

<div id="root">
	<header>
		<%@include file="include/header.jsp" %>
	</header>
	<nav>
		<%@include file="include/nav.jsp" %>
	</nav>

	<section id="container">
	
	<c:if test="${msg == null}">
		<form role="form" method="post" autocomplete="off">
			<p>
				<label for="title">글 제목</label><input type="text" id="title" name="title" />
			</p>
			<p>
				<label for="content">글 내용</label><textarea id="content" name="content"></textarea>
			</p>
			<p>
				<label for="writer">작성자</label>
				<input type="text" id="writer" name="writer" value="${member.userName}" readonly="readonly" />	
			</p>
			<p> 
				<button type="submit">작성</button>
			</p>		
		</form>
	</c:if>
		
	<c:if test="${msg == false}">
		<p>로그인을 하셔야 글을 작성할 수 있습니다.</p>
		
		<p><a href="/">홈으로</a></p>	
	</c:if>
	
	</section>

	<footer>
		<%@include file="include/footer.jsp" %>		
	</footer>

</div>

</body>
</html>
