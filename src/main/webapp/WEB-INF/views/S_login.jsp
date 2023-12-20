<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/S_login.css?after">

</head>
<body>

<jsp:include page = "K_Include/herder.jsp" ></jsp:include>

<div>
	<div class="loginHeader">
		<h2>로그인</h2>
		<p>꿈을그린병원에 오신 것을 환영합니다.</p>
	</div>
	
	<div class="logBox">
		<h3 class="loginText">로그인</h3>
		<p class="loginText02">
			꿈을그린병원 홈페이지 회원 서비스를<br>이용하시려면 로그인이 필요합니다.
		</p>
		
		<form id="loginForm" method="post" action="login">
			<div class="main">
				<label>
					<input id="id" name="id" placeholder="아이디/진찰권 번호(환자번호)" class="inputText" type="text"/><br/>
				</label> 
				<label>
					<input id="pw" name="pw" placeholder="비밀번호를 입력하세요" class="inputText" type="password"/><br/>
				</label>
				<label for="openPw">
					<input type="checkbox" id="openPw" name="openPw" onclick="checkPw()" value="button"/>비밀번호 표시
				</label>
			</div>
			<div>
				<button type="submit" id="loginBtn" class="logBtn" onclick="formValidLogin()">로그인</button>
			</div>
		</form>
		<div class="under">
			<a href="find" role="button" class="txtBtn">아이디/비밀번호찾기&nbsp;</a>
			<a href="#" role="button" class="txtBtn">회원가입&nbsp;</a>
			<a href="#" class="btnNaver btnBig" role="button">SNS 로그인</a>
		</div>
		<div class="telBox">
			<p>
				<span>대표전화 · 진료예약</span>
			</p>
			<p>
				<b class="colorPoint">1588-9999</b>
			</p>
		</div>
	</div>
</div>
<script type="text/javascript" src="resources/js/S_login.js"></script>

<jsp:include page="K_Include/footer.jsp"></jsp:include>

</body>
</html>