<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>회원가입</title>
</head>

<script>
    $(document).ready(function () {
        // 아이디 유효성 검사(1 = 중복 / 0 != 중복)
        $("#member_id").blur(function () {
            // id = "id_reg" / name = "userId"
            var member_id = $('#member_id').val();
            $.ajax({
                url: '/join',
                type: 'POST',//보내는 기준
                data: {"member_id": member_id},
                success: function (data) {
                    console.log("1 = 중복o 0 = 중복x : " + data);

                    if (data == 1) {
                        // 1 : 아이디가 중복되는 문구
                        $("#idCheck").text("이미 사용중인 계정입니다.");
                        $("#idCheck").css("color", "red");
                        $("#join_submit").attr("disabled", true);

                    } else if (data == 0) {
                        //0 : 회원가입 성공 시 회원가입 성공페이지로 이동하는데 지금은 페이지가 없어서 로그인폼으로
                        window.location.href = "/loginForm";
                    }/*else {
                        if (idJ.test(user_id)) {
                            // 0 : 아이디 길이 / 문자열 검사
                            $("#idCheck").text("");
                            $("#join_submit").attr("disabled", false);

                        } else if (user_id == "") {

                            $('#idCheck').text('아이디를 입력해주세요 :)');
                            $('#idCheck').css('color', 'red');
                            $("#join_submit").attr("disabled", true);

                        } else {

                            $('#idCheck').text("아이디는 소문자와 숫자 4~12자리만 가능합니다 :) :)");
                            $('#idCheck').css('color', 'red');
                            $("#join_submit").attr("disabled", true);
                        }

                    }*/
                }, error: function () {
                    console.log("실패");
                }
            });
        });
    });
</script>

<body>

<h1>회원가입</h1>

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
</form:form>

</body>
</html>