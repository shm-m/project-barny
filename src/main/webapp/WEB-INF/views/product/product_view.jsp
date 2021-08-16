<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
         <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
               <!DOCTYPE html">
               <html>

               <head>
                  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
                  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> -->
                  <!-- <link rel="stylesheet" href="/static/css/collstyle.css"> -->


                  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
                  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
                  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

                  <!-- Favicon-->
                  <link rel="icon" type="image/x-icon" href="/static/main_page/assets/favicon-2.ico" />
                  <!-- Font Awesome icons (free version)-->
                  <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
                  <!-- Google fonts-->
                  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet"
                     type="text/css" />
                  <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet"
                     type="text/css" />
                  <!-- naver fonts -->
                  <link rel="stylesheet" type="text/css"
                     href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">

                  <!-- Core theme CSS (includes Bootstrap)-->
                  <link href="/static/main_page/css/styles.css" rel="stylesheet" />
                  <!-- <link rel="stylesheet" href="/static/css/styles.css"> -->

                  <title>product_view</title>
                  <style>
                     .collapsing {
                        position: relative;
                        height: 0;
                        overflow: hidden;
                        transition: height ease !important;
                     }

                     .card-img {
                        width: 300px;
                        height: 350px;
                        object-fit: cover;

                     }

                     .product_view {
                        padding-top: 100px;
                        margin-left: 200px;
                        margin-right: 200px;

                     }

                     .product_view1 {
                        margin-left: 400px;

                     }

                     .product_detail {
                        /*margin: auto; */
                        margin-left: 400px;
                        margin-right: 200px;
                        margin-top: -10px;
                     }
                  </style>

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
               </head>

               <body id="page-top">

                  <!-- Navigation-->
                  <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav_2">
                     <div class="container">
                        <a class="navbar-brand" href="/main"><img src="/static/main_page/assets/img/logo.png"
                              alt="바니 로고 1" /></a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                           data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                           aria-label="Toggle navigation">
                           Menu <i class="fas fa-bars ms-1"></i>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarResponsive">
                           <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                              <li class="nav-item"><a class="nav-link" href="/subscribe">구독</a></li>
                              <li class="nav-item"><a class="nav-link" href="/story">브랜드
                                    스토리</a></li>
                              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#"
                                    id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown"
                                    aria-expanded="false"> 상품 보기 </a>
                                 <ul class="dropdown-menu" aria-labelledby="navbarDarkDropdownMenuLink">
                                    <li></li>
                                    <a class="dropdown-item" href="#">패키지</a>
                              </li>
                              <li><a class="dropdown-item" href="#">술</a></li>
                              <li><a class="dropdown-item" href="#">안주</a></li>
                           </ul>
                           </li>
                           <li class="nav-item"><a class="nav-link" href="event">이벤트</a></li>
                           <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#"
                                 id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown"
                                 aria-expanded="false"> 고객센터 </a>
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

                  <div class="product_view">
                     <div class="product_view1">
                        <div class="mt-4">
                           <div class="row">
                              <div class="col-md-4">
                                 <img class="card-img" src="${product_view.image_route}" alt="상품이미지">
                              </div>
                              <div class="col-md-4 mt-4">
                                 <h3>${product_view.product_name}</h3>
                                 <hr class="my-6">
                                 <!-- <label>가격&nbsp : ${product_view.price} 원</label> -->
                                 <p> 상품할인가&nbsp; : &nbsp;${product_view.price} 원</p>
                                 <hr class="my-2">
                                 <p style="text-color:#999999;">배송구분&nbsp; : &nbsp;일반배송</p>
                                 <hr class="my-2">
                                 <label>구매수량&nbsp; : &nbsp;</label>
                                 <input id="product_qty" name="amount" type="number" value="1" />
                                 </br>
                                 <hr class="my-2">

                                 <input id="pro_id" name="product_id" type="hidden" value="${product_view.product_id}">
                                 <button id="cart" type="button" class="btn btn-secondary btn-md">장바구니</button>
                                 <button id="order2" type="button" class="btn btn-secondary btn-md">바로구매</button>
                                 <button id="re" type="button" disabled class="btn btn-secondary btn-md">재입고알림</button>
                              </div>
                           </div>
                           <br>
                        </div>
                     </div>

                     <hr class="my-6">

                     <!-- 상품 상세 정보 -->
                     <div class="product_detail">
                        <div class="row">
                           <div class="col-md-12">
                              <img class="detail-img" style="width: 80%; height: auto;" src="/static/img/002.png">
                              <img class="detail-img" style="width: 80%; height: auto;" src="/static/img/003.png">
                              <img class="detail-img" style="width: 80%; height: auto;" src="/static/img/004.png">
                           </div>
                        </div>
                        <br>
                     </div>
                     <hr class="my-4">

                     <!--best 후기-->

                     <div class="container table-wrap col-md-10">
                        <p style="text-align: center; font-size: large;">💛🧡베스트 후기🧡💛</p>
                        <table class="table myaccordion table-hover" id="accordion">
                           <thead>
                              <tr>
                                 <th class="th-sm" style="text-indent:-10000px;">글번호</th>
                                 <th class="th-sm"></th>
                                 <th class="th-sm">제목</th>
                                 <th class="th-sm">작성자</th>
                                 <th class="th-sm">좋아요</th>
                              </tr>
                           </thead>
                           <tbody>
                              <c:choose>
                                 <c:when test="${empty list}">
                                    <tr>
                                       <td colspan="6" align="center">작성한 후기가 없습니다</td>
                                    </tr>
                                 </c:when>
                                 <c:when test="${!empty list}">
                                    <c:forEach items="${best_list}" var="ff" varStatus="file">
                                       <tr data-toggle="collapse" data-target="#best_collapse${file.index}"
                                          aria-expanded="true" aria-controls="collapse" class="collapsed">
                                          <td id="board_id" value="${vo.board_id}" style="text-indent:-10000px;">
                                             ${ff.board_id}</td>
                                          <td><img src="https://image.flaticon.com/icons/png/512/3712/3712572.png"
                                                style="height: 20px;"></td>
                                          <td>${ff.b_title}</td>
                                          <td>${ff.nickname}</td>
                                          <td id="like_count${status.index}">${ff.like_count}</td>
                                          <i class="fa" aria-hidden="false"></i>
                                       </tr>
                                       <tr>
                                          <td colspan="6" id="best_collapse${file.index}" class="collapse acc"
                                             data-parent="#accordion" aria-expanded="false">
                                             <c:forEach items="${ff.fileList}" var="image">
                                                <div class="float: left; margin-right: 10px;"><img style=" width:
                                                   200px; height: 200px;" src="${image.image_route}">
                                                </div>
                                             </c:forEach>
                                             <p style="text-align: center; margin: 5%;">${ff.b_content}</p>
                                          </td>
                                       </tr>
                                    </c:forEach>
                                 </c:when>
                              </c:choose>
                           </tbody>


                        </table>
                     </div>

                     </br>

                     <hr class="my-4">

                     <!--후기 list-->
                     <div class="container table-wrap col-md-10">
                        <p style="text-align: center; font-size: large;">💛🧡후기 목록🧡💛</p>
                        <table class="table myaccordion table-hover" id="accordion">
                           <form role="form" method="post" id="reviewForm"
                              action="${pageContext.request.contextPath}/product_view?product_id=${product_view.product_id}">
                              <thead>
                                 <tr>
                                    <th class="th-sm">글번호</th>
                                    <th class="th-sm">제목</th>
                                    <th class="th-sm">작성자</th>
                                    <th class="th-sm">작성일</th>
                                    <th class="th-sm">좋아요</th>
                                    <th class="th-sm">조회</th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <c:choose>
                                    <c:when test="${empty list}">
                                       <tr>
                                          <td colspan="6" align="center">작성한 후기가 없습니다</td>
                                       </tr>
                                    </c:when>
                                    <c:when test="${!empty list}">
                                       <c:forEach items="${list}" var="vo" varStatus="status">
                                          <tr data-toggle="collapse" data-target="#collapse${status.index}"
                                             aria-expanded="true" aria-controls="collapse" class="collapsed">
                                             <td id="board_id" value="${vo.board_id}">${vo.board_id}</td>
                                             <td>${vo.b_title}</td>
                                             <td>${vo.nickname}</td>
                                             <td>${vo.b_date}</td>
                                             <td id="like_count${status.index}">${vo.like_count}</td>
                                             <td id="b_hit">${vo.b_hit}</td>
                                             <i class="fa" aria-hidden="false"></i>
                                          </tr>
                                          <tr>
                                             <td colspan="6" id="collapse${status.index}" class="collapse acc"
                                                data-parent="#accordion" aria-expanded="false">
                                                <p style="text-align: center; margin: 5%;">${vo.b_content}</p>

                                                <button value="${vo.board_id}" id="${status.index}" type="button"
                                                   class="like_button btn btn-outline-danger" style="float: right;"><svg
                                                      xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                      fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
                                                      <path
                                                         d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                                                   </svg></button>

                                                <c:forEach items="${vo.fileList}" var="image" varStatus="status">
                                                   <div style="float: left; margin-right: 10px;"><img
                                                         style="width: 200px; height: 200px;" src="${image.image_route}"
                                                         onerror="history.go(0);"></div>
                                                </c:forEach>
                                             </td>
                                          </tr>
                                       </c:forEach>
                                    </c:when>
                                 </c:choose>
                              </tbody>

                           </form>

                        </table>
                        <button class="btn btn-warning btn-sm" style="float: right;" type="button"
                           onclick="location.href='/user/review/write_view/product_view?product_id=${product_view.product_id}'">후기
                           등록</button>
                     </div>

                  </div>

                  <!--page-->
                  <nav aria-label="Page navigation example">
                     <ul class="pagination justify-content-center">
                        <c:if test="${pageMaker.prev}">
                           <li class="page-item">
                              <a class="page-link"
                                 href="${pageMaker.makeNum(pageMaker.startPage - 1)}&product_id=${product_view.product_id}"
                                 aria-label="Previous">
                                 <span aria-hidden="true">&laquo;</span>
                                 <span class="sr-only">Previous</span>
                              </a>
                           </li>
                        </c:if>
                        <c:forEach var="idx" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
                           <li class="page-item "><a class="page-link"
                                 href="${pageMaker.makeNum(idx)}&product_id=${product_view.product_id}">
                                 ${idx}
                              </a>
                           </li>
                        </c:forEach>
                        <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                           <li class="page-item">
                              <a class="page-link" aria-label="Next"
                                 href="${pageMaker.makeQuery(pageMaker.endPage +1) }&product_id=${product_view.product_id}">
                                 <span aria-hidden="true">&raquo;</span>
                                 <span class="sr-only">Next</span>
                              </a>
                           </li>
                        </c:if>
                     </ul>
                  </nav>




                  <script src="/static/js/popper.js"></script>
                  <script src="/static/js/reviewLike&Hit.js"></script>


                  <script>
                     // 장바구니
                     $(document).ready(function () {

                        $("#cart").click(function (event) {

                           event.preventDefault();

                           var product_id = $("#pro_id").val();
                           var product_qty = $("#product_qty").val();


                           var cart = {
                              product_id: product_id,
                              product_qty: product_qty
                           };

                           //dataType: 'json',
                           $.ajax({
                              type: "GET",
                              url: "/user/writeCart",
                              cache: false,
                              contentType: 'application/json; charset=utf-8',
                              data: cart,
                              success: function (result) {
                                 alert("장바구니에 담겼습니다!");
                              },
                              error: function (e) {
                                 alert("실패");
                                 console.log(e);
                              }
                           });

                        });



                     });
                  </script>

                  <script>
                     // 바로구매
                     $(document).ready(function () {
                        $("#order2").click(function (event) {


                           event.stopPropagation();
                           event.preventDefault();

                           var product_id = $("#pro_id").val();
                           var product_qty = $("#product_qty").val();


                           var order = {
                              product_id: product_id,
                              product_qty: product_qty
                           };

                           $.ajax({
                              type: "GET",
                              url: "/user/order2",
                              cache: false,
                              contentType: 'application/json; charset=utf-8',
                              data: order,
                              success: function (result) {

                                 if (result != "SUCCESS")
                                    location.href = "${pageContext.request.contextPath}/loginForm";
                                 else
                                    location.href = "${pageContext.request.contextPath}/order2";


                              },
                              error: function (e) {
                                 alert("이동에 실패하였습니다.");
                              }
                           });

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
                  <a href="javascript:void kakaoChatStart()" class="kakaoChatPc hidden-md hidden-sm hidden-xs"
                     id="kakao-chat">
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