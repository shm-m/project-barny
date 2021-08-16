<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Barny:: 찾아가는 Bar</title>

    <!-- Favicon-->
    <link rel="icon" type="image/x-icon"
          href="/static/main_page/assets/favicon-2.ico"/>

    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"
            crossorigin="anonymous"></script>

    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
          rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"
          rel="stylesheet" type="text/css"/>

    <!-- naver fonts -->
    <link rel="stylesheet" type="text/css"
          href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">

    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="/static/main_page/css/styles.css" rel="stylesheet"/>
    <link rel="stylesheet" href="/static/css/5.0bootstrap.min.css"/>
    <link rel="stylesheet" href="/static/css/styles.css">
    <link rel="stylesheet" href="/static/css/bootstrap.min.css"/>
    <link href="/static/main_page/css/styles.css" rel="stylesheet"/>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
</head>

<body>
<!--now event Grid-->
<section class="page-section bg-light">
    <div class="container">
        <div class="text-center">
            <div class="text-center" style="margin-bottom: 5rem">
                <h4 class="section-heading text-uppercase">현재 진행중인 이벤트</h4>
            </div>
        </div>

        <div class="card-group col d-flex justify-content-center" style="margin-left: 15px">
            <div class="card">
                <a href="/user/event_cardbarny">
                    <img src="/static/img/event1.png" class="card-img-top"/></a>
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
                <a href="/user/event_roulette">
                    <img src="/static/img/event2.png" class="card-img-top" alt="..."/></a>
                <div class="card-body">
                    <h5 class="card-title">[상시 이벤트] 8월의 출석 체크룰렛!</h5>
                    <p class="card-text">
                        룰렛을 돌려 매일 다양한 포인트를 받아가세요
                    </p>
                </div>
                <div class="card-footer">
                    <small class="text-muted">2021-08-01 ~ 2021-08-31</small>
                </div>
            </div>
            <div class="card">
                <a href="...">
                    <img src="/static/img/event3.png" class="card-img-top" alt="..."/></a>
                <div class="card-body">
                    <h5 class="card-title">[상시 이벤트] 쿠키를 까면 포인트가 펑!</h5>
                    <p class="card-text">오늘의 운세를 알아보고 포인트를 받아가자!</p>
                </div>
                <div class="card-footer">
                    <small class="text-muted">2021-07-23 ~ 상시 진행중</small>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Bootstrap core JS-->
<script type="text/javascript">
  $(document).ready(function () {
    var searchForm = $("#searchForm");
    $("#searchForm button").on("click", function (e) {
      if (!searchForm.find("option:selected").val()) {
        alert("검색 종류를 선택하세요");
        return false;
      }
      if (!searchForm.find("input[name='keyword']").val()) {
        alert("키워드를 입력하세요");
        return false;
      }
      searchForm.find("input[name='pageNum']").val("1");
      e.preventDefault();

      searchForm.submit();
    });
  });
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>