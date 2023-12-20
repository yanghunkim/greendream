<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/L_memberTerms.css"/>
<title>꿈을그린병원 : 회원가입</title>
</head>
<jsp:include page="../K_Include/herder.jsp"></jsp:include>


<body>
	<div id="te">
		<div id="start">
			그린드림병원 회원가입을 시작합니다!<br>
		</div>
		<div id="please">
			약관에 동의해 주세요.
		</div>
		<form action="memberId" method="post">
			<div id="check">
			<input type="checkbox" id="ch1" name="ch1" class="chk" > 그린드림병원 서비스 이용약관 동의(필수)<br>
			<input type="checkbox" id="ch2" name="ch2" class="chk" > 그린드림병원 개인정보 수집 및 이용 동의(필수)<br>
			<input type="checkbox" id="ch3" name="ch3" class="chk" > 광고성 정보 수신(선택)<br>
			</div>
			<input type="button" id="all" name="all" value="모두동의" onclick="allcheck()" ><br>
			<input type="submit" name="next" id="next" disabled='disabled' value="다음" >
		</form>
	</div>	
</body>
<jsp:include page="../K_Include/footer.jsp"></jsp:include>

<script src="/resources/js/L_memberTerms.js"></script>
</html>