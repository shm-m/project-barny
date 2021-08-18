<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<sec:authentication property="principal" var="principal"/>

<html lang="ko">
<head>
    <title>Find your drink, Barny</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

    <!-- Favicon-->
    <link rel="icon" href="/static/login/images.icona/barny.png" type="image/x-icon" sizes="16x16">
    <!--bootstrap-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
            crossorigin="anonymous"></script>
    <!--jQuery-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>

    <!-- naver fonts -->
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">

    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="/static/main_page/css/styles.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="/static/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/static/login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <link rel="stylesheet" type="text/css" href="/static/login/vendor/animate/animate.css">
    <link rel="stylesheet" type="text/css" href="/static/login/vendor/css-hamburgers/hamburgers.min.css">
    <link rel="stylesheet" type="text/css" href="/static/login/vendor/animsition/css/animsition.min.css">
    <link rel="stylesheet" type="text/css" href="/static/login/vendor/select2/select2.min.css">
    <link rel="stylesheet" type="text/css" href="/static/login/vendor/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" type="text/css" href="/static/login/css/util.css">
    <link rel="stylesheet" type="text/css" href="/static/login/css/main.css">

    <!--  <style> body {
          min-height: 100vh;
          background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
          background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
          background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
          background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
          background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
      }

      .input-form {
          max-width: 680px;
          margin-top: 80px;
          padding: 32px;
          background: #fff;
          -webkit-border-radius: 10px;
          -moz-border-radius: 10px;
          border-radius: 10px;
          -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
          -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
          box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
      } </style>
  -->

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
                <li class="nav-item"><a class="nav-link" href="/subs">구독</a></li>
                <li class="nav-item"><a class="nav-link" href="#portfolio">브랜드
                    스토리</a></li>
                <li class="nav-item dropdown"><a
                        class="nav-link dropdown-toggle" href="#"
                        id="navbarDarkDropdownMenuLink" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false"> 상품 보기 </a>
                    <ul class="dropdown-menu"
                        aria-labelledby="navbarDarkDropdownMenuLink">
                        <li></li>
                        <a class="dropdown-item" href="#">패키지</a></li>
                        <li><a class="dropdown-item" href="#">술</a></li>
                        <li><a class="dropdown-item" href="#">안주</a></li>
                    </ul>
                </li>
                <li class="nav-item"><a class="nav-link" href="#team">이벤트</a></li>
                <li class="nav-item dropdown"><a
                        class="nav-link dropdown-toggle" href="#"
                        id="navbarDarkDropdownMenuLink" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false"> 고객센터 </a>
                    <ul class="dropdown-menu"
                        aria-labelledby="navbarDarkDropdownMenuLink">
                        <li></li>
                        <a class="dropdown-item" href="/notice">공지사항</a></li>
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

<!--content-->
<div class="container" style="padding-top: 2rem;">
    <div class="row">
        <div class="col-3" style="padding: 7rem 0;">
            <div class="list-group side-nav">
                <a href="#" class="list-group-item list-group-item-action">구독 정보</a>
                <a href="#" class="list-group-item list-group-item-action">구매 내역</a>
                <a href="#" class="list-group-item list-group-item-action">문의 내역</a>
                <a href="#" class="list-group-item list-group-item-action">후기</a>
                <a href="#" class="list-group-item list-group-item-action">적립금</a>
                <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
                개인 정보 수정</a>
            
            </div>
        </div>

        <div class="col-9" style="width: 70%; padding: 7rem 0;">
           		 <h3 class="board_name">회원정보수정
               <a class="board_name_small">포인트 및 주문내역, 개인정보 등을 확인하거나 변경하세요.</a>
            </h3>
            <div class="table-responsive outline pb-3">
                <table class="table custom-table" style="min-width: 500px;">
                    <thead style="border-bottom: solid 1px;">
                    <tr>
                    
<!--updateForm-->
<form:form name="frmMember" modelAttribute="memberVO" action="/updateUser" method="POST" >
         <div class="container pt-5" style="width: 60%">
            <div class="input-form-backgroud row">
            <div class="input-form col-md-12 mx-auto"></div>
         </div>
         </div>
               <%-- <form class="validation-form" novalidate> --%>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <div class="wrap-input100 validate-input m-b-16">
                                <label for="member_id">아이디</label>
                                <input class="form-control" type="text" id="member_id" name="member_id" readonly
                                       value="<sec:authentication property="principal.memberVO.member_id"/>"
                                       placeholder="6~12자 이내의 영어,숫자 조합 " 
                                       minlength="6" maxlength="12">
                                <form:errors path="member_id"/>

                            </div>
                        </div>
                        
                        <div class="col-md-6 mb-3">
                            <div class="wrap-input100 validate-input m-b-16">
                                <label for="member_name">이름</label>
                                <input class="form-control" type="text" id="member_name" name="member_name" disabled
                                       value="<sec:authentication property="principal.memberVO.member_name"/>"
                                       placeholder="이름" >
                                <form:errors path="member_name"/>

                            </div>
                        </div>

                        <div class="col-md-6 mb-3">
                            <div class="wrap-input100 validate-input m-b-16">
                                <label for="pw">패스워드</label>
                                <input class="form-control" type="password" id="pw" name="pw"
                                       placeholder="8자~20자 이내의 영문,숫자,특수기호 조합"  >
                                <form:errors path="pw"/>
                            </div>
                        </div>


                        <div class="col-md-6 mb-3">
                            <div class="wrap-input100 validate-input m-b-16">
                                <label for="nickname">닉네임</label>
                                <input class="form-control" type="text" id="nickname" name="nickname"
                                       value="<sec:authentication property="principal.memberVO.nickname"/>"
                                       placeholder="nickname" >
                                <form:errors path="nickname"/>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                         <div class="col-md-8 mb-3 ">
                            <div class="wrap-input100 validate-input m-b-16">
                                <label for="email">이메일</label>
                                <input type="email"
                                       placeholder="E-Mail" name="email" id="email" 
                                       value="<sec:authentication property="principal.memberVO.email"/>"
                                       class="form-control" >
                                <form:errors path="email" cssStyle="color: #e80f25"/>

                            </div>
                        </div>

                        <div class="col-md-3 mb-4 pt-4">
                            <input type="button" value="인증하기" id="sendMail" class="btn btn-outline-primary btn-s"> <br>
                        </div>
                        <div class="col-md-8 mb-3 ">
                            <input type="text" placeholder="인증 키 입력" style="display: none;"
                                   class="compare form-control" ><span class="compare-text"
                                                                      style="display: none">불일치</span>
                        </div> 
                    </div>

                    <div class="row">
                        <label for="postcode">주소</label>
                        <div class="col-md-8 mb-3">
                            <input type="text" class="form-control" id="postcode" name="address" placeholder="우편번호">
                        </div>
                        <div class="col-md-4 mb-3">
                            <input type="button" class="btn btn-outline-primary btn-s"
                                   onclick="execDaumPostcode()"
                                   value="우편번호 찾기"><br>
                        </div>
                        <div class="col-md-8 mb-3">
                            <input type="text" class="form-control" id="roadAddress"
                                   value="${memberVO.address}"
                                   name="address"
                                   placeholder="도로명주소 " >
                            <div class="invalid-feedback">
                                주소를 입력해주세요.
                            </div>
                        </div>
                        <div class="col-md-8 mb-3 ">
                            <input type="text" class="form-control" id="detailAddress"
                                   value="${memberVO.address}"
                                   name="address"
                                   placeholder="상세주소" >
                            <div class="invalid-feedback">
                                주소를 입력해주세요.
                            </div>

                            <input type="hidden" id="jibunAddress" placeholder="지번주소"></br>
                            <span id="guide" style="color:#6A6666;display:none"></span>
                            <input type="hidden" id="extraAddress" placeholder="참고항목">
                        </div>
                        <div class="col-md-8 mb-3">
                         <label for="tel">전화번호</label>
                         <input type="tel" class="form-control"
                                value="<sec:authentication property="principal.memberVO.tel"/>"
                                placeholder="010-0000-0000"
                                id="tel" name="tel">
                         <div class="invalid-feedback"> 전화번호를 입력해주세요.</div>
                     </div>
                     <div class="col-md-4 mb-3"><label for="date_of_birth">생년월일</label>
                         <input type="date"
                                class="form-control" disabled
                                value="<sec:authentication property="principal.memberVO.date_of_birth"/>"
                                id="date_of_birth"
                                name="date_of_birth"
                                placeholder=""
                                >
                         <div class="invalid-feedback"> 생년월일을 입력해주세요.</div>
                     </div>
                    </div>
<%--                     </form> --%>
                    <hr class="mb-4">
                    
                    <div class="custom-control custom-checkbox">
                     <input type="checkbox" class="custom-control-input"
                         id="aggrement" >
                     <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label></div>
                 <div class="mb-4"></div>
                 <!-- <button class="btn btn-primary btn-lg btn-block"  id="submit-btn" type="submit">수정 완료</button> -->
                 <button class="btn btn-primary btn-lg btn-block" id="#submit-update" type="submit">수정완료</button>
                 <button type="button" onclick="location.href='${pageContext.request.contextPath}/my/delete'"
                              class="btn btn-primary btn-lg btn-block">회원 탈퇴</button>
            </div>
        </div>
    </div>
    
    <script type="text/javascript">

        // 비밀번호 미입력시 경고창

        /* function checkValue(){

            if(!document.deleteform.pwd.value){

                alert("비밀번호를 입력하지 않았습니다.");

                return false;

            }

        } */

        

        $(document).ready(function(){

            $("#btnDelete").click(function(){

                // 확인 대화상자 

                if(confirm("삭제하시겠습니까?")){

                    document.deleteform.action = "secessionpro";

                    document.deleteform.submit();

                }

            });

        });

    </script>
</form:form>

    	  
      <script>
      function button_event(){
    	  if (confirm("탈퇴되었습니다") == true){    
    	      document.form.submit();
    	  }else{   //취소
    	      return;
    	  }
    	  }
    	  //-->
    	  </script>


<script>
// window.addEventListener('load', () => {
//         const forms = document.getElementsByClassName('validation-form');
//         Array.prototype.filter.call(forms, (form) => {
//             form.addEventListener('submit', function (event) { //이 addEventListener 가 submit 이라는 이벤트를 발생시켰을떄 function실행
//                 if (form.checkValidity() === false) {
//                     event.preventDefault();
//                     event.stopPropagation();
//                 }
//                 form.classList.add('was-validated');
//             }, false);
//         });
//     }, false); 






</body>


<!—JS—>

<script src="/static/join_page/js/join.js"></script>
<script src="/static/login/js/main.js"></script>
<script src="/static/join_page/js/find-address.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/static/login/vendor/animsition/js/animsition.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="/static/login/vendor/select2/select2.min.js"></script>
<script src="/static/login/vendor/daterangepicker/moment.min.js"></script>
<script src="/static/login/vendor/daterangepicker/daterangepicker.js"></script>
<script src="/static/login/vendor/countdowntime/countdowntime.js"></script>






</html>