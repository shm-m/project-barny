<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V10</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
		  integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
			integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
			crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
			crossorigin="anonymous"></script>

	<!-- Font Awesome icons (free version)-->
	<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>

	<!-- naver fonts -->
	<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">

	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="/static/main_page/css/styles.css" rel="stylesheet"/>



	<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="/static/login/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/static/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/static/login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/static/login/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/static/login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/static/login/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/static/login/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/static/login/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/static/login/css/util.css">
	<link rel="stylesheet" type="text/css" href="/static/login/css/main.css">
<!--===============================================================================================-->
</head>
<body id="page-top">

<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav_2">
	<div class="container">
		<a class="navbar-brand" href="/main"><img src="/static/main_page/assets/img/logo.png" alt="바니 로고 1" /></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
			Menu
			<i class="fas fa-bars ms-1"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
				<li class="nav-item"><a class="nav-link" href="#services">구독</a></li>
				<li class="nav-item"><a class="nav-link" href="#portfolio">브랜드 스토리</a></li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
						상품 보기
					</a>
					<ul class="dropdown-menu" aria-labelledby="navbarDarkDropdownMenuLink">
						<li></li><a class="dropdown-item" href="#">패키지</a></li>
						<li><a class="dropdown-item" href="#">술</a></li>
						<li><a class="dropdown-item" href="#">안주</a></li>
					</ul>
				</li>
				<li class="nav-item"><a class="nav-link" href="#team">이벤트</a></li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
						고객센터
					</a>
					<ul class="dropdown-menu" aria-labelledby="navbarDarkDropdownMenuLink">
						<li></li><a class="dropdown-item" href="#">공지사항</a></li>
						<li><a class="dropdown-item" href="#">자주 묻는 질문</a></li>
					</ul>
				</li>
			</ul>
			<ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
				<li class="nav-item"><a class="nav-link" href="#services">로그인</a></li>
				<li class="nav-item"><a class="nav-link" href="#services">장바구니</a></li>
			</ul>
		</div>
	</div>
</nav>

<div class="limiter">

		<div class="container-login100">
			<div class="wrap-login100 p-t-50 p-b-90">
				<form class="login100-form validate-form flex-sb flex-w" action="/login" method="POST">
					<span class="login100-form-title p-b-51">
						로그인
					</span>
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "아이디를 입력해주세요.">
						<input class="input100" type="text" id="username" name="username" placeholder="아이디를 입력해주세요">
						<span class="focus-input100"></span>
					</div>
					
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "비밀번호를 입력해주세요.">
						<input class="input100" type="password" name="password" placeholder="비밀번호를 입력해주세요">
						<span class="focus-input100"></span>
					</div>
					
					<div class="flex-sb-m w-full p-t-3 p-b-24">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								아이디 저장
							</label>
						</div>

						<div>
							<a href="#">
								아이디/비밀번호 찾기
							</a>
						</div>
					</div>

					<div class="container-login100-form-btn m-t-17">
						<button class="login100-form-btn">
							로그인
						</button>
					</div>
					<div class="container-login100-form-btn m-t-17">
						<button class="other_login100-form-btn">
							KAKAO로 로그인
						</button>
					</div>
					<div class="container-login100-form-btn m-t-17">
						<button class="other_login100-form-btn">
							NAVAR로 로그인
						</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="/static/login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/static/login/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="/static/login/vendor/bootstrap/js/popper.js"></script>
	<script src="/static/login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/static/login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="/static/login/vendor/daterangepicker/moment.min.js"></script>
	<script src="/static/login/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="/static/login/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="/static/login/js/main.js"></script>

</body>
</html>