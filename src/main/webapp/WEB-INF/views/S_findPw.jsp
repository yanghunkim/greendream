<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/S_findPw.css">
</head>
<body>

<jsp:include page = "K_Include/herder.jsp" ></jsp:include>

<section id="contents">

	<h2 class="findHeader">비밀번호 찾기</h2>
	<h3 class="info-txt">비밀번호를 잊어버리셨나요? <br> 가입하신 이메일 인증으로 비밀번호 변경이 가능합니다.</h3>

		<div class="findContainer">
			<form id="#" name="#" action="#" method="post" onsubmit="#">
				<fieldset>
				<legend>이메일 인증</legend>
					<div class="tableForm02">
					<table>
						<caption>비밀번호 찾기</caption>
						<colgroup>
							<col style="width:12%;">
							<col>
						</colgroup>
							<tbody>
								<tr>
									<th scope="row"><label for="userId">아이디</label><span class="star">*</span></th>
									<td>
										<input type="text" id="id" name="id" class="inputNormal" role="textbox" maxlength="35" />
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="userEmail">이메일</label><span class="star">*</span></th>
									<td>
										<input type="text" id="email" name="email" class="inputNormal" role="textbox" maxlength="35" />
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="checkNum">인증번호</label><span class="star">*</span></th>
									<td>
										<label id="checkLabel">
										<input type="text" id="checkNum" name="checkNum" class="inputNormal" role="textbox" maxlength="10" />
										<button type="button" class="yesBtn" id="emailChk"><span class="button-text">인증번호 확인</span></button>
										</label>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="userPw">새 비밀번호</label><span class="star">*</span></th>
									<td>
										<input type="text" id="pw" name="pw" class="inputNormal" role="textbox" maxlength="35" />
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="userPw">비밀번호 확인</label><span class="star">*</span></th>
									<td>
										<input type="text" id="checkPw" name="checkPw" class="inputNormal" role="textbox" maxlength="35" />
									</td>
								</tr>
							</tbody>
						</table>
						<div class="btns-wrap" id="btn_ID">
							<a href="login" class="notBtn" role="button"><span class="button-text">취소</span></a>
							<button type="submit" class="yesBtn"><span class="button-text">확인</span></button>
						</div>
					</div>
				</fieldset>
			</form>							
		</div>
		
		<div>
			<a href="login" class="notBtn" role="button"><span class="button-text">로그인</span></a>
			<a href="S_findPw" class="notBtn" role="button"><span class="button-text">비밀번호 찾기</span></a>
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

<jsp:include page = "K_Include/footer.jsp" ></jsp:include>

</body>
</html>