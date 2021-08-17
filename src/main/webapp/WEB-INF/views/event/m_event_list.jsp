<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <link rel="stylesheet" href="/static/css/bootstrap.min.css" />
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
      <title>Barny:: 찾아가는 Bar</title>

      <link rel="icon" type="image/x-icon" href="/static/main_page/assets/favicon-2.ico" />
      <!-- Font Awesome icons (free version)-->
      <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
      <!-- Google fonts-->
      <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
      <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet"
        type="text/css" />
      <!-- naver fonts -->
      <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
      <!-- Core theme CSS (includes Bootstrap)-->
      <link href="/static/main_page/css/styles.css" rel="stylesheet" />
      <link rel="stylesheet" href="/static/css/styles.css">

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>


      <!--css-->
      <link rel="stylesheet" href="/static/css/5.0bootstrap.min.css" />
    </head>


    <body id="page-top">

      <!-- Navigation-->
      <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav_2">
        <div class="container">
          <a class="navbar-brand" href="/main"><img src="/static/main_page/assets/img/logo.png" alt="바니 로고 1" /></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
            aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu <i class="fas fa-bars ms-1"></i>
          </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
              <li class="nav-item"><a class="nav-link" href="/subscribe">구독</a></li>
              <li class="nav-item"><a class="nav-link" href="/story">브랜드
                  스토리</a></li>
              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="product_main"
                  id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false"> 상품 보기
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDarkDropdownMenuLink">
                  <li></li>
                  <a class="dropdown-item" href="product_main">패키지</a>
              </li>
              <li><a class="dropdown-item" href="product_main_liquor">술</a></li>
              <li><a class="dropdown-item" href="product_main_food">안주</a></li>
            </ul>
            </li>
            <li class="nav-item"><a class="nav-link" href="/event">이벤트</a></li>
            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink"
                role="button" data-bs-toggle="dropdown" aria-expanded="false"> 고객센터 </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDarkDropdownMenuLink">
                <li></li>
                <a class="dropdown-item" href="/notice">공지사항</a>
            </li>
            <li><a class="dropdown-item" href="/faq">자주 묻는 질문</a></li>
            </ul>
            </li>
            </ul>
            <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
              <sec:authorize access="isAnonymous()">
                <li class="nav-item"><a class="nav-link" href="/loginForm">로그인</a></li>
              </sec:authorize>
              <sec:authorize access="isAuthenticated()">
                <li class="nav-item"><a class="nav-link" href="/board/my_page">마이페이지</a></li>
              </sec:authorize>

              <li class="nav-item"><a class="nav-link" href="#services">장바구니</a></li>
              <sec:authorize access="isAuthenticated()">
                <li class="nav-item"><a class="nav-link" href="/logout">로그아웃</a></li>
              </sec:authorize>
            </ul>
          </div>
        </div>
      </nav>

      <!--now event Grid-->
      <section class="page-section bg-light">
        <div class="container">
          <div class="text-center">
            <div class="text-center" style="margin-bottom: 5rem">
              <h4 class="section-heading text-uppercase">Barny의 다양한 이벤트</h4>
            </div>
          </div>

          <div class="card-group col d-flex justify-content-center" style="margin-left: 15px">
            <div class="card">
              <a href="/user/event_cardbarny">
                <img src="/static/img/event1.png" class="card-img-top" /></a>
              <div class="card-body">
                <h5 class="card-title">[상시 이벤트] 바니를 찾아라!</h5>
                <p class="card-text">
                  숨어있는 바니의 짝을 맞추면 1000포인트를 드려요!
                </p>
              </div>
              <div class="card-footer">
                <small class="text-muted">2021-07-23 ~ 상시 진행중</small>
              </div>
            </div>
            <div class="card">
              <a href="..">
                <img src="/static/img/event2.png" class="card-img-top" alt="..." /></a>
              <div class="card-body">
                <h5 class="card-title">[상시 이벤트] 8월의 출석 체크룰렛!</h5>
                <p class="card-text">
                  매일 룰렛을 돌려 다양한 포인트를 받아가세요
                </p>
              </div>
              <div class="card-footer">
                <small class="text-muted">2021-08-01 ~ 2021-08-31</small>
              </div>
            </div>
            <div class="card">
              <img src="/static/img/event3.png" class="card-img-top" alt="..." /></a>
              <div class="card-body">
                <h5 class="card-title text-muted">[종료된 이벤트] 쿠키를 까면 포인트가 펑!</h5>
                <p class="card-text text-muted">오늘의 운세를 알아보고 포인트를 받아가자!</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">2021-07-23 ~ 2021-07-30</small>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Footer-->
      <footer class="footer">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-lg-4 text-lg-start"><b>주식회사 바니</b> <br> 서울특별시 종로구 종로 69 YMCA빌딩 7층
              <br>Copyright &copy; Barny Inc. All rights reserved.
            </div>
            <div class="col-lg-4 my-3 my-lg-0">
              <a class="btn-dark btn-social mx-2" href="#!"><i class="fab fa-twitter"></i></a>
              <a class="btn-dark btn-social mx-2" href="#!"><i class="fab fa-instagram"></i></a>
            </div>
            <div class="col-lg-4 text-lg-end">
              <a class="link-dark text-decoration-none me-3" href="#!">개인정보처리방침</a>
              <a class="link-dark text-decoration-none" href="#!">이용약관</a>
            </div>
          </div>
        </div>
      </footer>

      <!--top-button-->
      <img id="myBtn" src="/static/main_page/assets/top-btn.png" onclick="topFunction()">


      <!--kakao-chat-->
      <a href="javascript:void kakaoChatStart()" class="kakaoChatPc hidden-md hidden-sm hidden-xs" id="kakao-chat">
        <img src="/static/main_page/assets/kakao-chat.png" width="50px" height="50px">
      </a>

      <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
      <script type='text/javascript'>
        Kakao.init('7e53e24ce9a07956bfb5ac4930333caa');

        function kakaoChatStart() {
          Kakao.Channel.chat({
            channelPublicId: '_WDxjSs'
          });
        }
      </script>
      <!-- Bootstrap core JS-->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
      <!-- Core theme JS-->
      <script src="/static/main_page/js/scripts.js"></script>
      <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
      <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>


    </body>

    </html>