<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
	<div class="form-group email-form">
		<label for="email">이메일</label>
		<div class="input="></div>
		<input type="text" class="form-control" name="userEmail01" id="userEmail01" placeholder="이메일">
		
		<select class="form-control" name="userEmail02" id="userEmail02">
			<option>@naver.com</option>
			<option>@gmail.com</option>
			<option>@daum.net</option>
			<option>@hanmail.com</option>
			<option>@nate.com</option>
		</select>
	</div>
	<div class="input-group-addon">
		<button type="button" class="btn btn-primary" id="mail-Check-Btn">본인인증</button>
	</div>
		<div class="mail-check-box">
			<input class="form-control mail-check-input" placeholder="인증번호 6자리를 입력해주세요." disabled="disabled" maxlength="8">
		</div>
	<div>
		<span id="mail-check-warn"></span>
	</div>
</body>
</html>