<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content="barny_drink_test"/>
    <meta name="author" content="SH"/>
    <title>Find your drink, Barny</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico"/>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css"/>
    <!-- naver fonts -->
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
    <!-- Core theme CSS (includes Bootstrap)-->
    <link rel="stylesheet" href="static/main_page/css/drink_test.css"/>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>


</head>
<body id="page-top">

<%--navigation--%>
<%@ include file="./header.jsp" %>


<%--test page--%>
<div id="drink_test_body" class="container shadow bg-body rounded">
    <section id="main" class="mx-auto my-3">
        <h1>바니와 함께 인생 술 찾기</h1>
        <div class="col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
            <img src="static/img/test_main.png" alt="mainImage" class="img-fluid">
        </div>
        <p>
            아래 시작하기 버튼을 통해 몰랐던 나의 술 취향을 찾아보세요!
        </p>
        <button type="button" class="rButton mt-3 py-2 px-3" onclick="js:begin()">시작하기</button>
    </section>
    <section id="qna" class="mx-auto my-3">
        <div class="status mx-auto mt-3">
            <div class="statusBar">
            </div>
        </div>
        <div class="qBox my-5 py-3 mx-auto">

        </div>
        <div class="answerBox">

        </div>
    </section>
    <section id="result" class="mx-auto my-3 py-5 px-3">
        <h4>당신의 취향은...</h4>
        <div class="resultname">

        </div>
        <div id="resultImg" class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">

        </div>
        <div class="resultDesc">

        </div>
        <button type="button" class="rButton mt-3 py-2 px-3" onclick="location.href='/subscribe'">구독 하기</button>
        <br>
        <button type="button" class="rButton mt-3 py-2 px-3" onclick="location.href='/drink_test'">다시 하기</button>
    </section>
    <script src="static/main_page/js/dTest.js" charset="utf-8"></script>
</div>

<%--footer--%>
<%@ include file="./footer.jsp" %>
</body>
</html>
