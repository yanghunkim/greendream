<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<title>꿈을그린병원 : 카카오 회원가입</title>
<link rel="stylesheet" href="/resources/css/L_memberEmail.css"/>
</head>
<body>
	<div id="ti">카카오로  회원가입</div><br>
	<div id="ti2">이메일 인증</div><br>
	<form action="kakaoLoginEnd" method="post">
		<input type="hidden" name="k_id" id="k_id" value="${sessionScope.k_id}">
		<input type="hidden" name="k_nickname" id="k_nickname" value="${sessionScope.k_nickname}">
		
	<div class="email_auth">
		<input type="text" placeholder="이메일형식으로 입력해주세요(ex: hong1234@gmail.com)" name="email" id="email" class="email">
		<button type="button" id="email_auth_btn" class="email_auth_btn">인증번호 받기</button><br>
		<label id="lbEmail"></label>
	</div>
	<input type="text" placeholder="인증번호 입력" id="email_auth_key">
	<input type="button" id="check" value="번호 확인">
	<input type="submit" name="next" id="next" disabled='disabled' value="다음" >
	</form>
	<!-- 이메일 -->
</body>
<script src="/resources/js/L_memberEmail.js"></script>
</html>