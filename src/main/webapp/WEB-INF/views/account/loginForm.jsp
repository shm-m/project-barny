<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <!-- Bootstrap CSS -->
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link href="/css/signin.css" rel="stylesheet">

    <title>Login</title>
</head>

<body class="text-center">
<form class="form-signin" action="/login" method="POST">

    <img class="mb-4" src="https://getbootstrap.com/docs/4.5/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72"></a>
    <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>

         <c:if test="${param.error != null}">
                <p>아이디와 비밀번호가 잘못되었습니다.</p>
            </c:if>

    <label for="username" class="sr-only">Username</label>
    <input type="text" id="username" name="username" class="form-control" placeholder="Username" required autofocus>
    <label for="inputPassword" class="sr-only">Password</label>
    <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required>
    <!-- <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> Remember me
      </label>
    </div> -->
    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    <a href="https://kauth.kakao.com/oauth/authorize?client_id=6cbc45879bd3c8e98d47a03bf45de7e1&redirect_uri=http://localhost:8282/auth/kakao/callback&response_type=code"><img src ="/static/img/kakao_login_button.png"/></a>
    <p class="mt-5 mb-3 text-muted">&copy; 2021</p>

   <!-- <a href="#",-->
</form>
<a href ="/joinForm">회원가입을 아직 하지 않으셨나요?</a>

<!--<footer th:replace="fragments/common :: footer"></footer>-->
</body>

</html>