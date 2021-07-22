<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Product_main_liquor</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico"/>
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css"/>
    <!-- naver fonts -->
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="/static/main_page/css/styles.css" rel="stylesheet"/>
    <link href="/static/css/styles.css" rel="stylesheet"/>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="/static/main_page/js/scripts.js"></script>
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
</head>
<body>

<!-- 헤더 네비게이션 바 -->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav_2">
    <div class="container">
        <a class="navbar-brand" href="#page-top"><img src="/static/main_page/assets/img/logo.png" alt="바니 로고 1" /></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars ms-1"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                <li class="nav-item"><a class="nav-link" href="#services">구독</a></li>
                <li class="nav-item"><a class="nav-link" href="story">브랜드 스토리</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        상품 보기
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDarkDropdownMenuLink">
                        <li></li><a class="dropdown-item" href="product_main">패키지</a></li>
                        <li><a class="dropdown-item" href="product_main_liquor">술</a></li>
                        <li><a class="dropdown-item" href="product_main_food">안주</a></li>
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
                <li class="nav-item"><a class="nav-link" href="loginForm">로그인</a></li>
                <li class="nav-item"><a class="nav-link" href="#services">장바구니</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- 네비게이션 탭 -->
<div class = "sub_nav">
<ul class="nav justify-content-center navbar-expand-lg navbar-light bg-light">
    <li class="nav-item">
      <a class="nav-link active" href="product_main">구독패키지</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="product_main_liquor">술</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="product_main_food">안주</a>
    </li>

    <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
</ul>
</div>
<!-- 술 상품 보기 -->

  	<div class="container mt-4 text-center">
   	 <div class="row">  	   
	  <c:forEach items="${product_main_liquor}" var="dto">
      <div class="col-4">
        <div class="card h-100">
          <a href="#"><img class="card-img-top width=100" src="barny.png"></a>
          	<div class="card-body">
            <h2>${dto.product_name}</h2>
            <p>${dto.price} 원</p>
            <p><a class="btn btn-secondary" href="product_view?product_id=${dto.product_id}">상품보러가기</a></p>
          	</div>
        </div>
      </div>
      </c:forEach>
     </div>
    </div>
    
	
</body>
</html>