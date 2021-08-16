<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Find your drink, Barny</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="/static/main_page/assets/favicon.ico"/>
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@200;300;400;500;600&family=Nanum+Gothic:wght@400;700;800&display=swap"
          rel="stylesheet">
    <!-- naver fonts -->
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="/static/main_page/css/styles.css" rel="stylesheet"/>
    <link href="/static/event/roulette/css/roulette.css" rel="stylesheet"/>

</head>
<body>
<div class="roulette-background">
    <img src="/static/event/roulette/img/title.png" style="width: 60%;">
    <div class="content">
        <div>
            <img src="/static/event/roulette/img/roulette.png" id="image">
        </div>
        <div>
            <img src="/static/event/roulette/img/niddle.png" id="n_id">
            <div>
                <form name="addPoint" action="/event/add_point" method="post">
                    <input id="point" type="hidden" name="point" value=0>
                    <input id="member_idx" type="hidden" name="member_idx"
                           value="<sec:authentication property="principal.memberVO.member_idx"/>">
                    <input type="button" class="roulette-btn" value='룰렛 돌리기' id='start_btn'/>
                </form>
            </div>
        </div>


        <script>
            window.onload = function () {
                var pArr = ["100", "10", "500", "2000", "100", "1000"];
                $('#start_btn').click(function () {
                    function convertDateFormat(date) {
                        var year = date.getFullYear();
                        var month = date.getMonth() + 1;
                        month = month >= 10 ? month : '0' + month;
                        var day = date.getDate();
                        day = day >= 10 ? day : '0' + day;
                        return [year, month, day].join('');
                    }
                    var today = convertDateFormat(new Date());
                    var participate_date = '${participate_date}';
                    if (participate_date == today) {
                        alert('해당 이벤트는 하루에 한번만 참여 가능합니다.')
                        return false
                    }
                    rotation();
                    setTimeout("document.addPoint.submit()", 5500);
                });

                function rotation() {
                    $("#image").rotate({
                        angle: 0,
                        animateTo: 360 * 5 + randomize(0, 360),
                        center: ["50%", "50%"],
                        easing: $.easing.easeInOutElastic,
                        callback: function () {
                            var n = $(this).getRotateAngle();
                            endAnimate(n);
                            alert('축하합니다. ' + $("#point").val() + ' 포인트에 당첨되었습니다.');
                        },
                        duration: 5000
                    });
                }

// 100p 적립 : 300-360
// 10p 적립: 240-300
// 500p 적립: 180-240
// 2000p 적립 : 120-180
// 100p 적립 : 60-120
// 1000p 적립: 0-60

                function endAnimate($n) {
                    var n = $n;
                    var real_angle = n % 360;
                    var part = Math.floor(real_angle);

                    if (0 <= part && part < 60) {
                        $("#point").val(pArr[5]);
                        return;
                    } else if (60 <= part && part < 120) {
                        $("#point").val(pArr[4]);
                        return;
                    } else if (120 <= part && part < 180) {
                        $("#point").val(pArr[3]);
                        return;
                    } else if (180 <= part && part < 240) {
                        $("#point").val(pArr[2]);
                        return;
                    } else if (240 <= part && part < 300) {
                        $("#point").val(pArr[1]);
                        return;
                    } else {
                        $("#point").val(pArr[0]);
                        return;
                    }
                }

                function randomize($min, $max) {
                    return Math.floor(Math.random() * ($max - $min + 1)) + $min;
                }
            };
        </script>


        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="https://code.jquery.com/jquery-1.11.3.js"
                integrity="sha256-IGWuzKD7mwVnNY01LtXxq3L84Tm/RJtNCYBfXZw3Je0="
                crossorigin="anonymous"></script>
        <script src="/static/event/roulette/js/jQueryRotate.js"></script>
        <script src="/static/event/roulette/js/jQueryRotateCompressed.js"></script>
</body>
</html>
