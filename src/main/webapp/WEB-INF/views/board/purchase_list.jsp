<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Find your own drink, Barny</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="/static/main_page/assets/favicon.ico"/>
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@200;300;400;500;600&family=Nanum+Gothic:wght@400;700;800&display=swap"
          rel="stylesheet">
    <!-- naver fonts -->
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
    <!-- Core theme CSS (includes Bootstrap)-->
    <link rel="stylesheet" href="/static/main_page/css/styles.css"/>
    <link rel="stylesheet" href="/static/my_page/css/my_page.css"/>
    <link rel="stylesheet" href="/static/table/css/style.css"/>
    <link rel="stylesheet" href="/static/table/css/owl.carousel.min.css"/>
</head>



<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Navigation-->
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
                        <a class="dropdown-item" href="/product_main">패키지</a></li>
                        <li><a class="dropdown-item" href="/product_main_liquor">술</a></li>
                        <li><a class="dropdown-item" href="/product_main_food">안주</a></li>
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
                    <li class="nav-item"><a class="nav-link" href="/user/cart5">장바구니</a></li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <li class="nav-item"><a class="nav-link" href="/logout">로그아웃</a></li>
                </sec:authorize>
            </ul>
        </div>
    </div>
</nav>

<!--content-->
<div class="container" style="padding-top: 2rem;">
    <div class="row">
        <div class="col-3" style="padding: 7rem 0;">
            <div class="list-group side-nav">
                <a href="/board/press" class="list-group-item list-group-item-action">구독 정보</a>
                <a href="/board/purchase_list" class="list-group-item list-group-item-action active" aria-current="true">구매 내역</a>
                <a href="/board/my_view" class="list-group-item list-group-item-action">
                    문의 내역
                </a>
                <a href="/board/my_review" class="list-group-item list-group-item-action">후기</a>
                <a href="/board/point" class="list-group-item list-group-item-action">적립금</a>
                <a href="/user/edit" class="list-group-item list-group-item-action">개인 정보 수정</a>
            </div>
        </div>

        <div class="col-9" style="width: 70%; padding: 7rem 0;">
            <div class="board_name">구매 내역
                <a class="board_name_small">바니에서 구입한 상품들을 확인하세요.</a>
            </div>
            <div class="table-responsive outline pb-3">
                <table class="table custom-table" style="min-width: 500px;">
                    <thead style="border-bottom: solid 1px;">
                    <tr>
                        <td>주문번호</td>
                        <td>주문날짜</td>
                        <td>총금액</td>
                        <td>주문상태</td>
                        <td>배송번호</td>
                    </tr>
                    </thead>
                    <tbody>
                    <c:choose>

                        <c:when test="${empty purchase_list}">

                            <tr>
                                <td colspan="5" align="center">구매내역이 없습니다</td>
                            </tr>

                        </c:when>

                        <c:when test="${!empty purchase_list}">

                            <c:forEach var="orderList" items="${purchase_list}">

                            </c:forEach>
                        </c:when>
                    </c:choose>
                  
                    <c:forEach items="${purchase_list}" var="dto">
                    <tr>
                        <td>
                            <a class="order_id"
                               href="${pageContext.request.contextPath}/board/purchase_view?order_id=${dto.order_id}">${dto.order_id}</a>
                        </td>
                        
                        <td>${dto.order_date}</td>
                        <td>${dto.total_price}</td>
                        <td>${dto.ship_status_name}</td>
                        <td>${dto.ship_id}</td>
                        <td><a class="ship_id" a
                               href="${pageContext.request.contextPath}/board/ship_delete?ship_id=${dto.ship_id}"><input type="button" value="취소하기"onclick="button_event();"></a>
                        </td>
                    </tr>
                 </c:forEach>

                <table class="table custom-table" id="purchase_view"style="min-width: 500px;">
                 </tbody>
                </table>
                <div class="line mb-3" style="border-bottom: solid 2px; border-bottom-color: #EBC24B;"></div>

            </div>
        </div>
    </div>
</div>

<!-- 구매 내역 상세보기  ajax -->
<c:if test="${press.ship_status_id eq 2}">
    <script>
        function button_event() {
            if (confirm("취소할수없습니다") == true) {
                document.form.submit();
            } else {   //취소
                return;
            }
        }

        //-->
    </script>
</c:if>
<c:if test="${press.ship_status_id eq 2}">
</c:if>
<%-- </c:forEach> --%>

<script>
    $(document).ready(function () {

        $(document).on("click", ".order_id", function (event) {
            //prevendDefault()는 href로 연결해 주지 않고 단순히 click에 대한 처리를 하도록 해준다.
            event.preventDefault();

            console.log("purchase_view 호출전");

            var url = "/board/purchase_view";

            $.ajax({
                type: 'GET',
                url: $(this).attr("href"),
                cache: false, // 이걸 안쓰거나 true하면 수정해도 값반영이 잘안댐
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',// 데이터 타입을 제이슨 꼭해야함, 다른방법도 2가지있음
                success: function (result) {

                    var htmls = "";

                    $("#purchase_view").html("");

                    $("<tr>", {
                        html: "<td>" + "주문 상세 번호" + "</td>" +  // 컬럼명들
                            "<td>" + "주문번호" + "</td>" +
                            "<td>" + "상품" + "</td>" +
                            "<td>" + "상품수량" + "</td>"
                    }).appendTo("#purchase_view") // 이것을 테이블에붙임

                    if (result.length < 1) {
                        htmls.push("구매내역이 없습니다");
                    } else {

                        $(result).each(function () {
                            htmls += '<tr>';
                            htmls += '<a href="${pageContext.request.contextPath}/content_view?product_id=' + this.product_id + '">' + this.product_name + '</a></td>';


                            htmls += '<td>' + this.order_detail_id + '</td>';
                            htmls += '<td>' + this.order_id + '</td>';
                            htmls += '<td>'
                            htmls += '<a href="${pageContext.request.contextPath}/product_view?product_id=' + this.product_id + '">' + this.product_name + '</a></td>';

                            htmls += '<td>' + this.product_qty + '</td>';


                            htmls += '</tr>';
                        });   //each end
                    }

                    $("#purchase_view").append(htmls);

                }, error: function (a) {
                    console.log(a);
                }

            });   // Ajax end

        });
    });
</script>

<script>
    $(document).ready(function () {

        $(document).on("click", "#product_view", function (event) {
            //prevendDefault()는 href로 연결해 주지 않고 단순히 click에 대한 처리를 하도록 해준다.
            event.preventDefault();

            console.log("product_view 호출전");

            var url = "/product/product_view";

            $.ajax({
                type: 'GET',
                url: url,
                cache: false, // 이걸 안쓰거나 true하면 수정해도 값반영이 잘안댐
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',// 데이터 타입을 제이슨 꼭해야함, 다른방법도 2가지있음
                success: function (result) {

                    var htmls = "";

                    $("#purchase-list").html("");

                    $("<tr>", {
                        html: "<td>" + "주문번호" + "</td>" +  // 컬럼명들
                            "<td>" + "주문날짜" + "</td>" +
                            "<td>" + "총금액" + "</td>"
                    }).appendTo("#product_view") // 이것을 테이블에붙임

                    if (result.length < 1) {
                        htmls.push("구매내역이 없습니다");
                    } else {

                        $(result).each(function () {
                            htmls += '<tr>';

                            htmls += '<td>'
                            htmls += '<a class="product_name" href="${pageContext.request.contextPath}/product/product_name?product_name=' + this.product_name + '">' + this.order_id + '</a></td>';
                            htmls += '<td>' + this.order_date + '</td>';
                            htmls += '<td>' + this.total_price + '</td>';

                            htmls += '</tr>';
                        });   //each end
                    }

                    $("#purchase-list").append(htmls);

                }, error: function (e) {
                    console.log(e);
                }

            });   // Ajax end

        });
    });
</script>

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
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="/static/main_page/js/scripts.js"></script>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
</body>
</html>