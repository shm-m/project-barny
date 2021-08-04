<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>회원가입</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>

    <script>


    </script>


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
<div class="container pt-5" style ="width:60%">
    <div class="input-form-backgroud row">
        <div class="input-form col-md-12 mx-auto">
            <h4 class="mb-3">회원가입</h4>
            <form class="validation-form" novalidate>
                <div class="row">
                    <div class="col-md-6 mb-3">
                         <span class="login100-form p-b-35"><c:if test="${param.error != null}" >
                             <p>아이디와 비밀번호가 잘못되었습니다.</p>
                         </c:if></span>
                        <div class="wrap-input100 validate-input m-b-16" data-validate="아이디를 입력해주세요.">
                            <input class="input100" type="text" id="username" name="username" placeholder="아이디를 입력해주세요">
                            <span class="focus-input100"></span>
                        </div>



                        <label for="name">이름</label> <input type="text" class="form-control" id="name" name= "member_id" placeholder=""
                                                            value="" required>
                        <div class="invalid-feedback"> 이름을 입력해주세요.</div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="nickname">별명</label> <input type="text" class="form-control" id="nickname"
                                                                placeholder="" value="" required>
                        <div class="invalid-feedback"> 별명을 입력해주세요.</div>
                    </div>
                </div>
                <div class="mb-3">
                    <label for="email">이메일</label> <input type="email" class="form-control" id="email"
                                                          placeholder="you@example.com" required>
                    <div class="invalid-feedback"> 이메일을 입력해주세요.</div>
                </div>
                <div class="mb-3">
                    <label for="address">주소</label> <input type="text" class="form-control" id="address"
                                                           placeholder="서울특별시 강남구" required>
                    <div class="invalid-feedback">
                        주소를 입력해주세요.
                    </div>
                </div>
                <div class="mb-3"><label for="address2">상세주소<span class="text-muted">&nbsp;(필수 아님)</span></label>
                    <input type="text" class="form-control" id="address2" placeholder="상세주소를 입력해주세요."></div>
                <div class="row">
                    <div class="col-md-8 mb-3">
                        <label for="root">가입 경로</label> <select class="custom-select d-block w-100" id="root">
                        <option value=""></option>
                        <option>검색</option>
                        <option>카페</option>
                    </select>
                        <div class="invalid-feedback"> 가입 경로를 선택해주세요.</div>
                    </div>
                    <div class="col-md-4 mb-3"><label for="code">추천인 코드</label> <input type="text" class="form-control"
                                                                                       id="code" placeholder=""
                                                                                       required>
                        <div class="invalid-feedback"> 추천인 코드를 입력해주세요.</div>
                    </div>
                </div>
                <hr class="mb-4">
                <div class="custom-control custom-checkbox"><input type="checkbox" class="custom-control-input"
                                                                   id="aggrement" required>
                    <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label></div>
                <div class="mb-4"></div>
                <button class="btn btn-primary btn-lg btn-block" type="submit">가입 완료</button>
            </form>
        </div>
    </div>
    <footer class="my-3 text-center text-small"><p class="mb-1">&copy; 2021 YD</p></footer>
</div>

<script> window.addEventListener('load', () => {
    const forms = document.getElementsByClassName('validation-form');
    Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) { //이 addEventListener 가 submit 이라는 이벤트를 발생시켰을떄 function실행
            if (form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
            }
            form.classList.add('was-validated');
        }, false);
    });
}, false); </script>
</body>


<!--<h1>회원가입</h1>

<p>${addUserUrl}</p>
<form:form name="frmMember" action="/join" method="POST">
    <p>
        <label>아이디</label>
        <input type="text" id="member_id" name="member_id"/>
            <form:errors path="member_id" />
    <div class="check_font" id="idCheck">중복확인
    </div>

    </p>
    <p>
        <label>비밀번호</label>
        <input type="password" name="pw"/>
    </p>

    <p>
        <label>이름</label>
        <input type="text" name="member_name"/>
    </p>

    <p>
        <label>닉네임</label>
        <input type="text" name="nickname"/>
    </p>
    <p>
        <label>이메일</label>
        <input type="text" name="email"/>
    </p>
    <p>
        <label>유선번호</label>
        <input type="text" name="tel"/>
    </p>
    <p>
        <label>주소</label>
        <input type="text" name="address"/>
    </p>
    <p>
        <label>생년월일</label>
        <input type="date" name="date_of_birth"/>
    </p>

    <button type="submit" class="btn">가입하기</button>
</form:form>-->
<!--JS-->
<script src="/static/login/js/main.js"></script>
<script src="/static/login/vendor/animsition/js/animsition.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="/static/login/vendor/select2/select2.min.js"></script>
<script src="/static/login/vendor/daterangepicker/moment.min.js"></script>
<script src="/static/login/vendor/daterangepicker/daterangepicker.js"></script>
<script src="/static/login/vendor/countdowntime/countdowntime.js"></script>


</body>
</html>