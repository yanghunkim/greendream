<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<head>
<title>Home</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="js/Main.js"></script>
<link rel="stylesheet" href="resources/css/K_Main.css">
<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display= swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">

<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
</head>
<body>

	<!-- 최상단 메인 로고 작업 입니다. -->
	<div id="ktitle">
		<h1>꿈을그린병원</h1>
		<h4>Dream Green Hospital</h4>
	</div>
	<!-- 최상단 메인 로고 끝입니다. -->

	<!-- 상단 네비게이션 시작입니다. -->
	<div id="nav">
		<ul>
			<li>진료예약</li>
			<li>진료소개</li>
			<li>진료병과</li>
			<li>증명서발급</li>
			<li>공지사항</li>
		</ul>
	</div>
	<!-- 상단 네비게이션 끝입니다. -->


	<!-- 상중단 슬라이더 사진 기능이 있는 스위퍼 입니다. -->
	<div class="swiper mySwiper"
		style="position: fixed; top: 0; z-index: -1;">
		<div class="swiper-wrapper">
			<div class="swiper-slide"
				style="background-image: url(img/title03.jpg);"></div>
			<div class="swiper-slide"
				style="background-image: url(img/title02.jpg);"></div>
			<div class="swiper-slide"
				style="background-image: url(img/title04.jpg);"></div>
			<div class="swiper-slide"
				style="background-image: url(img/title01.jpg);"></div>
		</div>
		<div class="swiper-pagination"></div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
	<script>
		var swiper = new Swiper(".mySwiper", {
			pagination : {
				el : ".swiper-pagination",
			},
		});
	</script>
	<!-- 중단 메뉴 레이아웃 입니다.  -->
	<div id="layout">
		<div class="container">
			<ul>
				<li><a href="">진료예약문의</a></li>
				<li><a href="">예약현황조회</a></li>
				<li><a href="">&nbsp온라인<br>&nbsp예&nbsp&nbsp약</a></li>
			</ul>
		</div>
		<div class="container">
			<ul >
				<li><a href="">의료진<br>진료과</a></li>
				<li><a href="">외래진료일정표</a></li>
				<li><a href="">입&nbsp&nbsp원</a></li>
			</ul>
		</div>
		<div class="container">
			<ul>
				<li><a href="">급여/비급여<br>&nbsp&nbsp수술안내</a></li>
				<li><a href="">진단서/증명서<br>&nbsp발급</a></li>
				<li><a href="">면&nbsp&nbsp회</a></li>
			</ul>
		</div>
	</div>

</body>
</html>