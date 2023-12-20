<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="resources/css/S_findPw.css?after" />
</head>
<body>

<section id="contents">

	<h2 class="findHeader">비밀번호 찾기</h2><br>
	<h3 class="findHeader">비밀번호를 잊어버리셨나요? <br> 가입하신 이메일 인증을 통하여 비밀번호 변경이 가능합니다.</h3>

		<div class="findPwEmail">
			<form action="findPw" method="post">
				<table>
					<tr>
						<th scope="row"><label for="userId">아이디</label><span class="star">*</span></th>
						<td>
							<input type="text" id="id" name="id" class="inputNormal" placeholder="아이디" />
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="userEmail">이메일</label><span class="star">*</span></th>
						<td>
							<label id="sendLabel">
							<input type="text" id="email" name="email" class="inputNormal" placeholder="이메일" />
							<button type="button" class="yesBtn" id="emailSend">인증번호 받기</button>
							</label>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="checkNum">인증번호</label><span class="star">*</span></th>
						<td>
							<label id="checkLabel">
							<input type="text" id=check name="check" class="inputNormal" placeholder="인증번호를 입력하세요" />
							<input type="button" class="yesBtn" id="okay" value="인증번호 확인">
							</label>
							<label id="lbEmail"></label>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="userPw">새 비밀번호</label><span class="star">*</span></th>
						<td>
							<input type="password" id="pw" name="pw" class="inputNormal" placeholder="새 비밀번호" disabled="disabled" />
							<label for="openPw" id="viewPw">
							<input type="checkbox" id="openPw" name="openPw" onclick="visiblePw()" value="button"/>
							비밀번호 표시
							</label>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="userPw">비밀번호 확인</label><span class="star">*</span></th>
						<td>
							<input type="password" id="checkPw" name="checkPw" class="inputNormal"placeholder="비밀번호 확인" disabled="disabled" />
							<label id="checkPwLbl"></label>
						</td>
					</tr>
				</table>
					
				<div class="btns-wrap" id="btn_ID">
					<input type="submit" name="next" id="next" disabled='disabled' value="확인" onclick="formClick()" >
				</div>
			</form>							
		</div>
		
		<div>
			<a href="login" class="notBtn" role="button"><span class="button-text">로그인</span></a>
			<a href="find" class="notBtn" role="button"><span class="button-text">아이디 찾기</span></a>
		</div>
	
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


<script src="/resources/js/S_findPw.js"></script>
</body>
</html>