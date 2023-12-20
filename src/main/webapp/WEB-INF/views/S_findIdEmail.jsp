<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/S_login.css">
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>

</head>
<body>
	<section id="contents">

		<h2 class="findHeader">아이디  찾기</h2>

		<h3 class="info-txt">아이디를 잊어버리셨나요? <br> 가입하신 휴대폰 또는 이메일 확인을 통해 아이디를 찾으실 수 있습니다.</h3>
		 
	<form method="POST" action="findIdEmail">	
		<div class="findContainer">
			<div id="divRadio02">
				<input type="hidden" name="id" value="${findIdEmail.id}">
				<input type="hidden" name="id" value="${findIdEmail.name}">
				<input type="hidden" name="id" value="${findIdEmail.email}">
				
				<c:choose>
					<c:when test="${findIdEmail.name} != null && ${findIdEmail.email} != null">
						<h5>"회원님의 아이디는" + ${findIdEmail.id} + "입니다."</h5>
					</c:when>	
					<c:otherwise>
						<h5>"일치하는 아이디가 없습니다."</h5>						
					</c:otherwise>
				</c:choose>

				
				<div class="btns-wrap" id="btn_ID">
					<a href="login" class="notBtn" role="button"><span class="button-text">취소</span></a>
					<span class="button-text"><input type="submit" class="yesBtn" value="확인" role="button"></span>
					<a href="#" class="notBtn" role="button"><span class="button-text">비밀번호 찾기</span></a>
				</div>
			</div>						
		</div>
	</form>
	
		<!-- 회원가입 -->	
		<div class="join-link"> 		  
			<p class="join-txt">
				아직 가입하지 않으셨다면 지금 회원으로 가입하세요.<br>다양하고 유용한 온라인서비스를 이용하실 수 있습니다.
			</p>
			<!-- 회원가입 링크 -->
			<a href="#" class="button" role="button"><span class="button-text">회원가입</span></a>
		</div>
		<!-- SNS 가입 회원 -->
		<div class="join-SNS"> 		
			<p class="SNS-text">
				SNS 가입 회원은 가입하신 SNS에서 아이디 찾기가 가능합니다.
			</p>
			<!-- SNS 링크 -->
			<a href="#" class="button" role="button"><span class="button-text">네이버</span></a>
			<a href="#" class="button" role="button"><span class="button-text">카카오</span></a>
			<a href="#" class="button" role="button"><span class="button-text">구글</span></a>
		</div>
		
	</section>

<script type="text/javascript" src="resources/js/S_loginFind.js"></script>

</body>
</html>