<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Find your own drink, Barny</title>
    <!--font-->
    <link rel="stylesheet" href="fonts/icomoon/style.css"/>
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="/static/main_page/assets/favicon-2.ico"/>

    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>

    <!-- Core theme CSS (includes Bootstrap)-->
    <link rel="stylesheet" href="/static/my_page/css/my_page.css"/>
    <link rel="stylesheet" href="/static/main_page/css/styles.css"/>
    <link rel="stylesheet" href="/static/table/css/style.css"/>
    <link rel="stylesheet" href="/static/table/css/owl.carousel.min.css"/>

    <!--JQuery-->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>

<body>

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
                   <a href="/admin/admin_member" class="list-group-item list-group-item-action active" aria-current="true">회원 관리</a>
                   <a href="#" class="list-group-item list-group-item-action">상품 관리</a>
                   <a href="#" class="list-group-item list-group-item-action">게시판 관리</a>
                   <a href="#" class="list-group-item list-group-item-action">주문 관리</a>
                   
   
               </div>
           </div>
   
           <div class="col-9" style="width: 70%; padding: 7rem 0;">
               <div class="board_name">회원 정보 관리
                   <a class="board_name_small">관리자 모드입니다.</a>
               </div>
               <div class="table-responsive outline pt-3"></div>
               
               <table class="table" style="font-size: 13px; border-top : solid 1px; border-top-color: #dee2e6;">
                  <form action="modify" method="post">
          <input type="hidden" name="member_idx" value="${content_view.member_idx}">
          
         
          <tr>
            <td> 아이디 </td>
            <td> ${content_view.member_id} </td>
         </tr>
         <tr>
            <td> 회원번호 </td>
            <td> ${content_view.member_idx} </td>
         </tr>
         <tr>
            <td> 회원이름 </td>
            <td> <input type="text" name="member_name" value="${content_view.member_name
            }"></td>
         </tr>
         <tr>
            <td> 닉네임 </td>
            <td> <input type="text" name="nickname" value="${content_view.nickname}"></td>
         </tr>
          <tr>
            <td> 이메일 </td>
            <td> <input type="text" name="email" value="${content_view.email}"></td>
         </tr>
          <tr>
            <td> 결제수단 </td>
            <td> <input type="text" name="payment" value="${content_view.payment}"></td>
         </tr>
         
            <tr>
            <td> 전화번호 </td>
            <td> <input type="text" name="tel" value="${content_view.tel}"></td>
         </tr>
       
          <tr>
            <td> 주소 </td>
            <td> <input type="text" name="address" value="${content_view.address}"></td>
         </tr>
       
         <tr>
            <td> 생년월일 </td>
            <td> <input type="date" name="date_of_birth" value="${content_view.date_of_birth}"></td>
         </tr>
         
          <tr>
            <td> 포인트 </td>
            <td> <input type="text" name="point" value="${content_view.point}"></td>
         </tr>

          <tr >
             <td colspan="2"> 
             <input type="submit" value="수정" class="btn-basic text-uppercase"> &nbsp;&nbsp; <a href="admin_member" class="btn-basic text-uppercase">목록보기</a> &nbsp;&nbsp;
             <a id="a-delete" href="${pageContext.request.contextPath}/admin/delete?member_idx=${content_view.member_idx}"class="btn-basic text-uppercase">삭제</a> 
              &nbsp;&nbsp; <a href="reply_view?member_idx=${content_view.member_idx}" class="btn-basic text-uppercase">답변</a></td>
          </tr>
       </form>
 
             </table>
         </div>
     </div>
 </div>
 

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


</body>
</html>