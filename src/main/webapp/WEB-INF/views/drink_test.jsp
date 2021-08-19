<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title>Find your drink, Barny</title>
  <!-- Favicon-->
  <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
  <!-- Font Awesome icons (free version)-->
  <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
  <!-- Google fonts-->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
  <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
  <!-- naver fonts -->
  <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
  <!-- Core theme CSS (includes Bootstrap)-->
  <link href="/static/main_page/css/styles.css" rel="stylesheet" />
  <link rel="stylesheet" href="static/main_page/css/drink_test.css" />
  <!-- Bootstrap core JS-->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
  <!-- Core theme JS-->
  <script src="/static/main_page/js/scripts.js"></script>
  <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>


</head>
<body id="page-top">
<nav class="navbar navbar-expand-lg navbar-dark fixed-top"
     id="mainNav_2">
  <div class="container">
    <a class="navbar-brand" href="/main"><img
            src="/static/main_page/assets/img/logo.png" alt="바니 로고 1"/></a>
    <button class="navbar-toggler" type="button"
            data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
            aria-controls="navbarResponsive" aria-expanded="false"
            aria-label="Toggle navigation">
      Menu <i class="fas fa-bars ms-1"></i>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
        <li class="nav-item"><a class="nav-link" href="/subscribe">구독</a></li>
        <li class="nav-item"><a class="nav-link" href="/story">브랜드
          스토리</a></li>
        <li class="nav-item dropdown"><a
                class="nav-link dropdown-toggle" role="button"
                data-bs-toggle="dropdown" aria-expanded="false"> 상품 보기 </a>
          <ul class="dropdown-menu"
              aria-labelledby="navbarDarkDropdownMenuLink">
            <li></li>
            <a class="dropdown-item" href="product_main">패키지</a></li>
            <li><a class="dropdown-item" href="product_main_liquor">술</a></li>
            <li><a class="dropdown-item" href="product_main_food">안주</a></li>
          </ul>
        </li>
        <li class="nav-item"><a class="nav-link" href="/event">이벤트</a></li>
        <li class="nav-item dropdown"><a
                class="nav-link dropdown-toggle" role="button"
                data-bs-toggle="dropdown" aria-expanded="false"> 고객센터 </a>
          <ul class="dropdown-menu"
              aria-labelledby="navbarDarkDropdownMenuLink">
            <li></li>
            <a class="dropdown-item" href="/notice">공지사항</a></li>
            <li><a class="dropdown-item" href="/notice/faq">자주 묻는 질문</a></li>
          </ul>
        </li>
      </ul>
      <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
        <sec:authorize access="isAnonymous()">
          <li class="nav-item"><a class="nav-link" href="/loginForm">로그인</a></li>
        </sec:authorize>
        <sec:authorize access="hasAnyRole('ROLE_USER')">
          <li class="nav-item"><a class="nav-link" href="/board/my_page">마이페이지</a></li>
        </sec:authorize>
        <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
          <li class="nav-item"><a class="nav-link" href="/admin/statistics">관리페이지</a></li>
        </sec:authorize>
        <sec:authorize access="hasAnyRole('ROLE_USER')">
          <li class="nav-item"><a class="nav-link" href="/user/cart3">장바구니</a></li>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
          <li class="nav-item"><a class="nav-link" href="/logout">로그아웃</a></li>
        </sec:authorize>
      </ul>
    </div>
  </div>
</nav>

<%--test page--%>
<div id = "drink_test_body" class="container shadow bg-body rounded">
  <section id="main" class="mx-auto my-3">
    <h1>바니와 함께 인생 술 찾기</h1>
    <div class="col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
      <img src="static/img/test_main.png" alt="mainImage" class="img-fluid">
    </div>
    <p>
      아래 시작하기 버튼을 통해 몰랐던 나의 술 취향을 찾아보세요!
    </p>
    <button type="button" class="rButton mt-3 py-2 px-3" onclick="js:begin()">시작하기</button>
  </section>
  <section id="qna" class="mx-auto my-3">
    <div class="status mx-auto mt-3">
      <div class="statusBar">
      </div>
    </div>
    <div class="qBox my-5 py-3 mx-auto">

    </div>
    <div class="answerBox">

    </div>
  </section>
  <section id="result" class="mx-auto my-3 py-5 px-3">
    <h4>당신의 취향은...</h4>
    <div class="resultname">

    </div>
    <div id="resultImg" class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">

    </div>
    <div class="resultDesc">

    </div>
    <button type="button" class="rButton mt-3 py-2 px-3" onclick="location.href='/subscribe'">구독 하기</button>
    <br>
    <button type="button" class="rButton mt-3 py-2 px-3" onclick="location.href='/drink_test'">다시 하기</button>
  </section>
  <script src="static/main_page/js/dTest.js" charset="utf-8"></script>
</div>
</body>
</html>
