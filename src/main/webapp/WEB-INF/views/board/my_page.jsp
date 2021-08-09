<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<body id="page-top">

	<!-- Navigation-->
	<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="/static/main_page/assets/favicon.ico"/>
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@200;300;400;500;600&family=Nanum+Gothic:wght@400;700;800&display=swap" rel="stylesheet">
    <!-- naver fonts -->
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="/static/main_page/css/styles.css" rel="stylesheet"/>


</head>
<body id="page-top">

<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand" href="/main"><img src="/static/main_page/assets/img/logo.png" alt="바니 로고 1"/></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars ms-1"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                <li class="nav-item"><a class="nav-link" href=/subs>구독</a></li>
                <li class="nav-item"><a class="nav-link" href="/story">브랜드 스토리</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        상품 보기
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDarkDropdownMenuLink">
                        <li></li>
                        <a class="dropdown-item" href="#">패키지</a></li>
                        <li><a class="dropdown-item" href="#">술</a></li>
                        <li><a class="dropdown-item" href="#">안주</a></li>
                    </ul>
                </li>
                <li class="nav-item"><a class="nav-link" href="#team">이벤트</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        고객센터
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDarkDropdownMenuLink">
                        <li></li>
                        <a class="dropdown-item" href="/notice_list">공지사항</a></li>
                        <li><a class="dropdown-item" href="/faq">자주 묻는 질문</a></li>
                    </ul>
                </li>
            </ul>

            <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
 

               
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


	<!--top-button-->
	<img id="myBtn" src="/static/main_page/assets/top-btn.png"
		onclick="topFunction()">
</body>

<header>
<div style="height: auto; width: 300%; margin-top: 100px; float:">
	<h2>
		<a href="${pageContext.request.contextPath}/board/my_page">마이페이지</a>
	</h2>
	<hr width="100%" color="#DCDCDC"></hr>
	<img class="profile2"
		style="width: 200px; height: auto; margin-left:100px; float: left;"
		src="/static/img/BARNY3.png" />


	<ul id="box3">
		<li>환영합니다</li>
	</ul>

	<ul id="box">
		<li>${member_name}님</li>
	</ul>

	<ul id="box1">
		<li><a href="#">적립금</a>
	</ul>

	<ul id="box2">
		<li><a href="#">배송지관리</a>
	</ul>
	<hr width="100%" color="#DCDCDC"></hr>

</div>
</header>


<title>mypage</title>

<style type="text/css">


ul, li, ol {
	list-style-type: none;
}

a {
	color: #333;
	text-decoration: none;
	font-family: "BBTreeGB";
}

a:hover {
	text-decoration: underline
}

a:link, a:visited, a:active, a:hover {
	color: #333
}

#nav {
	width: 280px;
	border: 1px solid #dbdbdb;
	border-bottom: none;
	background: #FFF0F5;
	border-bottom: 1px solid #dbdbdb;
	float: both
}

#nav li ul {
	display: none;
}

#nav li ul li {
	background: 10px 10px no-repeat;
	padding: 4px 0 3px 17px
}

#nav li ul li a {
	color: #666668;
	text-indent: 0;
}

#nav li a {
	display: block;
	width: 195px;
	padding: 5px 0 5px 8px;
	text-decoration: none;
	background: no-repeat 0 0;
}

#nav li a:hover {
	font-weight: bold;
}

#nav li a.stay {
	background: =no-repeat 0 0 !important;
}

#nav li ul li a {
	width: 188px;
	padding: 1px 0 0 15px;
	margin-left: -17px;
	background: none;
}

#nav li .active {
	background: = no-repeat 0 0 !important;
	font-weight: bold;
}

#box3 {
	width: 300px;
	height: 200px;
	border-right: 1px solid #DCDCDC;
	border-left: 1px solid #DCDCDC;
	float: left;
	margin: 10px 0px 20px 50px;
	padding-right: 20px;
	text-align: center;
	line-height: 250px;
}

#box {
	width: 300px;
	height: 200px;
	border-right: 1px solid #DCDCDC;
	float: left;
	margin: 10px 20px 10px 30px;
	text-align: center;
	line-height: 250px;
}

#box1 {
	width: 300px;
	height: 200px;
	border-right: 1px solid #DCDCDC;
	float: left;
	margin: 10px 20px 10px 20px;
	padding-right: 30px;
	text-align: center;
	line-height: 250px;
}

#box2 {
	width: 300px;
	height: 200px;
	float: left;
	margin: 0px 0px 10px 20px;
	padding-right: 80px;
	text-align: center;
	line-height: 250px;
}

#purchase-list{
	position:absolute;
	left:290px;
	top:320px;
	
}

#purchase_view{

	position:absolute;
	left:290px;
	top:400px;

}


</style>
<!-- navi var-->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function() {
		var lastEvent = null;
		var slide = "#nav > li > ul";
		var alink = "#nav > li > a";

		function accordion() {
			if (this == lastEvent)
				return false;
			lastEvent = this;
			setTimeout(function() {
				lastEvent = null
			}, 200);

			if ($(this).attr('class') != 'active') {
				$(slide).slideUp();
				$(this).next(slide).slideDown();
				$(alink).removeClass('active');
				$(this).addClass('active');
			} else if ($(this).next(slide).is(':hidden')) {
				$(slide).slideUp();
				$(this).next(slide).slideDown();
			} else {
				$(this).next(slide).slideUp();
			}
		}
		$(alink).click(accordion).focus(accordion);
		$('#nav > li:last > a').addClass('stay');
	});
</script>
<body>





	<ul id="nav">

		<li>마이페이지</li>

		<li><a href="user/user_update?member_id">회원정보수정</a>
			<ul>
				<li><a href="#">회원탈퇴</a></li>
			</ul></li>

		<li><a href="#2">구독정보</a></li>

		<li><a id="purchase_list" href="purchase_list">구매내역</a></li>
		<li><a href="">1:1문의내역</a>
			<ul>
				<li><a href="my_view">내문의</a></li>
			</ul></li>

		<li><a href="my_review">후기</a></li>

      
      	<table id="purchase-list" width="500" cellpadding="0" cellspacing="0" border="1">
      	<table id="purchase_view" width="500" cellpadding="0" cellspacing="0" border="1">
		
</body>



<!-- 구매내역 리스트 ajax -->
<script>
	$(document).ready(function (){
		
 		$(document).on("click","#purchase_list",function(event){
			//prevendDefault()는 href로 연결해 주지 않고 단순히 click에 대한 처리를 하도록 해준다.
			event.preventDefault();
			
			console.log("purchase_list 호출전"); 

			var url = "/board/purchase_list";

			$.ajax({
	            type: 'GET',
	            url: url,
	            cache : false, // 이걸 안쓰거나 true하면 수정해도 값반영이 잘안댐
	            contentType:'application/json; charset=utf-8',
	            dataType: 'json',// 데이터 타입을 제이슨 꼭해야함, 다른방법도 2가지있음
		        success: function(result) {

					var htmls="";
					
		        	$("#purchase-list").html("");	

					$("<tr>" , {
						html : "<td>" +  "주문번호" + "</td>"+  // 컬럼명들
								"<td>" + "주문날짜" + "</td>"+
								"<td>" + "총금액" + "</td>"
					}).appendTo("#purchase-list") // 이것을 테이블에붙임

					if(result.length < 1){
						htmls.push("구매내역이 없습니다");
					} else {

		                    $(result).each(function(){			                    			                    
			                    htmls += '<tr>';
			                    
			                    htmls += '<td>'
			                    htmls += '<a class="order_id" href="${pageContext.request.contextPath}/board/purchase_view?order_id=' + this.order_id + '">' + this.order_id + '</a></td>';
			                    htmls += '<td>'+ this.order_date + '</td>';
			                    htmls += '<td>'+ this.total_price + '</td>';
			                   
			                    htmls += '</tr>';			                    		                   
		                	});	//each end
					}

					$("#purchase-list").append(htmls);
					
		        }, error: function (e) {
			        console.log(e);
			    }

			});	// Ajax end
			 
		}); 
	});	
	</script>
	
	<!-- 구매 내역 상세보기  ajax -->
	<script>
	$(document).ready(function (){
		
 		$(document).on("click",".order_id",function(event){
			//prevendDefault()는 href로 연결해 주지 않고 단순히 click에 대한 처리를 하도록 해준다.
			event.preventDefault();
			
			console.log("purchase_view 호출전"); 

			var url = "/board/purchase_view";

			$.ajax({
	            type: 'GET',
	            url: $(this).attr("href"),
	            cache : false, // 이걸 안쓰거나 true하면 수정해도 값반영이 잘안댐
	            contentType:'application/json; charset=utf-8',
	            dataType: 'json',// 데이터 타입을 제이슨 꼭해야함, 다른방법도 2가지있음
		        success: function(result) {

					var htmls="";
					
		        	$("#purchase_view").html("");	

					$("<tr>" , {
						html : 	"<td>" + "주문 상세 번호" + "</td>"+  // 컬럼명들
								"<td>" + "주문번호" + "</td>"+
								"<td>" + "상품" + "</td>"+
								"<td>" + "상품수량" + "</td>"
					}).appendTo("#purchase_view") // 이것을 테이블에붙임

					if(result.length < 1){
						htmls.push("구매내역이 없습니다");
					} else {

		                    $(result).each(function(){			                    			                    
			                    htmls += '<tr>';
			                    
			                    htmls += '<td>'+ this.order_detail_id + '</td>';
			                    htmls += '<td>'+ this.order_id + '</td>';
			                    htmls += '<td>'+ this.product_name + '</td>';
			                    htmls += '<td>'+ this.product_qty + '</td>';
			                   
			                    htmls += '</tr>';			                    		                   
		                	});	//each end
					}

					$("#purchase_view").append(htmls);
					
		        }, error: function (a) {
			        console.log(a);
			    }

			});	// Ajax end
			 
		}); 
	});	
	</script>
	
	<!-- 구독정보 ajax -->
	<script>
	$(document).ready(function (){
		
 		$(document).on("click","#press",function(event){
			//prevendDefault()는 href로 연결해 주지 않고 단순히 click에 대한 처리를 하도록 해준다.
			event.preventDefault();
			
			console.log("#press 호출전"); 

			var url = "/board/press";

			$.ajax({
	            type: 'GET',
	            url: url,
	            cache : false, // 이걸 안쓰거나 true하면 수정해도 값반영이 잘안댐
	            contentType:'application/json; charset=utf-8',
	            dataType: 'json',// 데이터 타입을 제이슨 꼭해야함, 다른방법도 2가지있음
		        success: function(result) {

					var htmls="";
					
		        	$("#press").html("");	

					$("<tr>" , {
						html :  "<td>" + "회원번호" + "</td>"+  // 컬럼명들
								"<td>" + "구독" + "</td>"+
								"<td>" + "날짜" + "</td>"
								
					}).appendTo("#press") // 이것을 테이블에붙임

					if(result.length < 1){
						htmls.push("구독된 정보가 없습니다");
					} else {

		                    $(result).each(function(){			                    			                    
		                    	htmls += '<tr>';
			                    htmls += '<td>'+ this.member_idx+ '</td>';
			                    htmls += '<td>'+ this.product_id + '</td>';
			                    htmls += '<td>'
			         			
			                    
			                    htmls += '<td>'+ this.order_date + '</td>'; 
// 			                    htmls += '<a href="${pageContext.request.contextPath}/press?member_idx=' + this.member_idx+ '">' + this.member_idx+ '</a></td>';
			                   	htmls += '</tr>';	
		                	});	//each end
					}

					$("#press").append(htmls);
					
		        }, error: function (b) {
			        console.log(b);
			    }

			});	// Ajax end
			 
		}); 
	});	
	</script>
	
	
	
	<!-- Bootstrap core JS-->
	<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="/static/main_page/js/scripts.js"></script>
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

</html>