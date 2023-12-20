<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/L_memberPassword.css"/>
<title>꿈을그린병원 : 회원가입</title>
</head>
<body>
${sessionScope}
	<div onmousemove="pf()" onkeydown="pf2()">
	<form action="memberEtc" method="post">
		<div>그린드림병원 비밀번호를 만들어주세요</div><br>
		<input type="text" name="pw" id="pw" placeholder="영문,숫자,특수문자 조합(8~20자)" maxlength="20" onKeyUp="validPw()">
		<input type="button" value="표시/숨김"  onclick="pwe()"><br>
		<label id="lbPw"></label><br>
		<div>비밀번호 확인</div><br>
		<input type="text" name="pwc" id="pwc" placeholder="비밀번호 재입력" maxlength="20" onKeyUp="validPwc()">
		<input type="button" value="표시/숨김" onclick="pwce()"><br>
		<label id="lbPwc" onblur="ext()"></label><br>
		<input type="submit" name="next" id="next" disabled='disabled' value="다음" >
	</form>
	</div>
</body>
<script src="/resources/js/L_memberPassword.js"></script>
</html>