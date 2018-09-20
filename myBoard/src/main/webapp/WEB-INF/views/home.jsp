<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>kuzuro 게시판</title>
</head>
<body>

<a href="/board/write">글 작성</a><br />
<a href="/board/list">글 목록</a><br />
<a href="/board/listPage">글 목록 + 페이지</a><br />
<a href="/board/listSearch">글 목록 + 페이지 + 목록</a>

<!-- 내용 추가 -->

<c:if test="${member == null}">
<form role="form" method="post" autocomplete="off" action="/member/login">
	<p>
		<label for="userId">아이디</label>
		<input type="text" id="userId" name="userId" />
	</p>
	<p>
		<label for="userPass">패스워드</label>
		<input type="password" id="userPass" name="userPass" />
	</p>
	<p><button type="submit">로그인</button></p>
	<p><a href="/member/register">회원가입</a></p>
</form>
</c:if>

<c:if test="${msg == false}">
	<p style="color:#f00;">로그인에 실패했습니다. 아이디 또는 패스워드를 다시 입력해주십시오.</p>
</c:if>

<c:if test="${member != null}">
	<p>${member.userName}님 환영합니다.</p>
	
	<a href="member/modify">회원정보 수정</a>, <a href="member/withdrawal">회원탈퇴</a><br />
	<a href="member/logout">로그아웃</a>
	
</c:if>

</body>
</html>






















