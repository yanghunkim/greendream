<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/L_merBer.css"/>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<!-- L_memberEmail 있던 script 입니다. -->
<script src="/resources/js/L_memberEmail.js"></script>
<!-- L_memberId 있던 script 입니다.  -->
<script src="/resources/js/L_memberId.js"></script>
<!-- L_memberPassword 있던 script 입니다. -->
<script src="/resources/js/L_memberPassword.js"></script>
<!-- L_memberPhone 있던 script 입니다. -->
<script src="/resources/js/L_memberPhone.js"></script>
<body>
<jsp:include page="K_Include/herder.jsp"></jsp:include>
	<form>
	
<!--                                             회원가입 페이지 입니다.                                          -->	
		<div id="sectioncontainer01" class="containerbox">
			<div id="start">
				<h2>그린드림병원 회원가입을 시작합니다!</h2>
			</div>
			<div id="please">
				<h3>이용약관에 동의해 주세요.</h3>
			</div>
			
			
<!-- <form action="memberEmail" method="post"> -->
			<div id="contaninerCheckbox" >
				<div id="contanierClickbtnbox01">	
					<input type="button" id="all" name="all" value="" onclick="allcheck()" >
					<h4>모두동의</h4>
				</div>
				<div id="checkboxscroll">
					<span id="check1">
						<input type="checkbox" id="ch1" name="ch1" class="chk" > 그린드림병원 서비스 이용약관 동의(필수)
					</span>
					
					<span id="check2">
						<input type="checkbox" id="ch2" name="ch2" class="chk" > 그린드림병원 개인정보 수집 및 이용 동의(필수)
					</span>
					
					<span id="check3">
						<input type="checkbox" id="ch3" name="ch3" class="chk" > 광고성 정보 수신(선택)
					</span>
				</div>	
				<div id="contanierClickbtnbox02">	
					<input type="submit" name="next" id="next" disabled='disabled' value="다음" >
				</div>
			</div>
<!-- </form> -->
		</div>
		
<%-- 		
<!--                                          email 세션입니다.                                                -->
		<div id="sectioncontainer02" class="containerbox">
			<div class="email_auth">
				<input type="text" placeholder="이메일형식으로 입력해주세요(ex: hong1234@gmail.com)" name="email" id="email" class="email">
				<button type="button" id="email_auth_btn" class="email_auth_btn">인증번호 받기</button><br>
				<label id="lbEmail"></label>
			</div>
				<input type="text" placeholder="인증번호 입력" id="email_auth_key">
				<input type="button" id="check" value="번호 확인">
				<input type="submit" name="next" id="next" disabled='disabled' value="다음" >
		</div>
		
		
<!--                                          아이디 페이지입니다.                                               -->	


		<div id="sectioncontainer03" class="containerbox">
			<div id="te">
				<div id="ti">그린드림병원 아이디를 만들어주세요</div>
				
<!-- 		<form action="memberPassword" method="post"> -->
				<div id="i">아이디</div>
					<input type="text" name="id" id="id" maxlength="20" placeholder="영문소대문자,숫자조합 (8~20자)" maxlength="20" onblur="validId()"> <br>
				<label id="lbId"></label>
					<input type="button" name="checkId" id="checkId" value="중복확인" >
		  			 <!-- </form> -->
					<input type="submit" name="next" id="next" disabled='disabled' value="다음">
<!-- 	    </form> -->
			</div>
			
		</div>
		
		
		
<!--                                        비밀번호 입력 페이지입니다.                                            -->


		<div id="sectioncontainer04" class="containerbox">
		
			<div id="me" onmousemove="pf()" onkeydown="pf2()">
			
			<!-- <form action="memberEtc" method="post"> -->
			<div id="ti">비밀번호를 설정해주세요.</div>
			<div id="p">비밀번호</div>
				<div id="pws">
					<input type="text" name="pw" id="pw" placeholder="영문,숫자,특수문자 조합(8~20자)" maxlength="20" onKeyUp="validPw()">
					<input type="button" value="표시/숨김"  onclick="pwe()">
				</div>
				<label id="lbPw"></label>
			<div>비밀번호 확인</div><br>
				<input type="text" name="pwc" id="pwc" placeholder="비밀번호 재입력" maxlength="20" onKeyUp="validPwc()">
				<input type="button" id="change" value="표시/숨김" onclick="pwce()"><br>
			<label id="lbPwc" onblur="ext()"></label><br>
				<input type="submit" name="next" id="next" disabled='disabled' value="다음" >
			<!-- </form> -->
			</div>
			
		</div>
		
<!--                                         휴대폰 페이지입니다.                                                -->
		<div id="sectioncontainer05" class="containerbox">
		
<!-- 	<form action="memberEnd" method="post"> -->
			<input type="hidden" name="id" id="id" value="${sessionScope.id}">
			<input type="hidden" name="pw" id="pw" value="${sessionScope.pw}">
			<input type="hidden" name="gender" id="gender" value="${sessionScope.gender}">
			<input type="hidden" name="name" id="name" value="${sessionScope.name}">
			<input type="hidden" name="birth" id="birth" value="${sessionScope.year}-${sessionScope.month}-${sessionScope.day}">
			<input type="hidden" name="email" id="email" value="${sessionScope.email}">
		<div>휴대폰(필수)</div><br>
			<input type="text" name="phone" id="phone" placeholder="11자 이내로 작성 가능" maxlength="11" onKeyUp="validPhone()"> <br>
			<label id="lbPhone"></label><br>
		<div>보호자번호(선택)</div>
			<input type="text" name="pphone" id="pphone" placeholder="11자 이내로 작성 가능" maxlength="11" onKeyUp="validIdPPhone()"> <br>
			<label id="lbPPhone"></label><br>
			<input type="submit" name="next" id="next" disabled='disabled' value="다음" >
<!-- 	</form> -->
		</div>
		
	</form> --%>
</body>
	<script src="/resources/js/L_memberTerms.js"></script>
	<jsp:include page="K_Include/footer.jsp"></jsp:include>
</html>