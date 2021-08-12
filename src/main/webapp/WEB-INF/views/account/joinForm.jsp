<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html lang="ko">
<head>
    <title>Find your drink, Barny</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


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
<!--joinForm-->
<form:form name="frmMember" modelAttribute="memberVO" action="/join" method="POST">
    <div class="container pt-5" style="width:60%">
        <div class="input-form-backgroud row">
            <div class="input-form col-md-12 mx-auto">

                <h4 class="mb-3">회원가입</h4>

                <form class="validation-form" novalidate>
                    <div class="row">

                        <div class="col-md-6 mb-3">
                            <div class="wrap-input100 validate-input m-b-16">
                                <label for="member_id">아이디</label>
                                <input class="form-control" type="text" id="member_id" name="member_id"
                                       value="${memberVO.member_id}"
                                       placeholder="6~12자 이내의 영어,숫자 조합 " required
                                       minlength="6" maxlength="12">
                                <form:errors path="member_id"/>

                            </div>
                        </div>

                        <div class="col-md-6 mb-3">
                            <div class="wrap-input100 validate-input m-b-16">
                                <label for="member_name">이름</label>
                                <input class="form-control" type="text" id="member_name" name="member_name"
                                       value="${memberVO.member_name}"
                                       placeholder="" required>
                                <form:errors path="member_name"/>

                            </div>
                        </div>

                        <div class="col-md-6 mb-3">
                            <div class="wrap-input100 validate-input m-b-16">
                                <label for="pw">패스워드</label>
                                <input class="form-control" type="password" id="pw" name="pw"
                                       placeholder="8자~20자 이내의 영문,숫자,특수기호 조합" required>
                                <form:errors path="pw"/>
                            </div>
                        </div>


                        <div class="col-md-6 mb-3">
                            <div class="wrap-input100 validate-input m-b-16">
                                <label for="nickname">닉네임</label>
                                <input class="form-control" type="text" id="nickname" name="nickname"
                                       value="${memberVO.nickname}"
                                       placeholder="" required>
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
                                       value="${memberVO.email}"
                                       class="form-control" required>
                                <form:errors path="email" cssStyle="color: #e80f25"/>

                            </div>
                        </div>

                        <div class="col-md-3 mb-4 pt-4">
                            <input type="button" value="인증하기" id="sendMail" class="btn btn-outline-primary btn-s"> <br>
                        </div>
                        <div class="col-md-8 mb-3 ">
                            <input type="text" placeholder="인증 키 입력" style="display: none;"
                                   class="compare form-control" required><span class="compare-text"
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
                                   placeholder="도로명주소 " required>
                            <div class="invalid-feedback">
                                주소를 입력해주세요.
                            </div>
                        </div>
                        <div class="col-md-8 mb-3 ">
                            <input type="text" class="form-control" id="detailAddress"
                                   value="${memberVO.address}"
                                   name="address"
                                   placeholder="상세주소" required>
                            <div class="invalid-feedback">
                                주소를 입력해주세요.
                            </div>

                            <input type="hidden" id="jibunAddress" placeholder="지번주소"></br>
                            <span id="guide" style="color:#6A6666;display:none"></span>
                            <input type="hidden" id="extraAddress" placeholder="참고항목">
                        </div>
                    </div>
            </div>

        </div>
        <div class="row">
            <div class="col-md-8 mb-3">
                <label for="tel">전화번호</label>
                <input type="tel" class="form-control"
                       value="${memberVO.tel}"
                       placeholder="010-0000-0000"
                       id="tel" name="tel">
                <div class="invalid-feedback"> 전화번호를 입력해주세요.</div>
            </div>
            <div class="col-md-4 mb-3"><label for="date_of_birth">생년월일</label>
                <input type="date"
                       class="form-control"
                       value="${memberVO.date_of_birth}"
                       id="date_of_birth"
                       name="date_of_birth"
                       placeholder=""
                       required>
                <div class="invalid-feedback"> 생년월일을 입력해주세요.</div>
            </div>
        </div>


        <hr class="mb-4">
        <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input"
                   id="aggrement" required>
            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label></div>
        <div class="mb-4"></div>
        <button class="btn btn-primary btn-lg btn-block" id="submit-btn" type="submit">가입 완료</button>
        </form>
    </div>
    </div>

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


</form:form>




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