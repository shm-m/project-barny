<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html">
<html>
<head>
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>

<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 

<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
<meta name="description" content=""/>
<meta name="author" content=""/>
<title>Order</title>

<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="/static/main_page/assets/favicon-2.ico"/>
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css"/>
<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css"/>
<!-- naver fonts -->
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/static/main_page/css/styles.css" rel="stylesheet"/>
<link rel="stylesheet" href="/static/css/styles.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

</head>

<style>
.order {
	padding-top: 100px;
	margin-left: 500px;
}

</style>
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
                        <a class="dropdown-item" href="/product_main">패키지</a></li>
                        <li><a class="dropdown-item" href="/product_main_liquor">술</a></li>
                        <li><a class="dropdown-item" href="/product_main_food">안주</a></li>
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

                <li class="nav-item"><a class="nav-link" href="/user/cart5">장바구니</a></li>
                <sec:authorize access="isAuthenticated()">
                    <li class="nav-item"><a class="nav-link" href="/logout">로그아웃</a></li>
                </sec:authorize>
            </ul>
        </div>
    </div>
</nav>
  
<div class="order">
<div class="order-1" style="margin-left:30%; margin-bottom:5%;">
<h1>주문서</h1>  
</div>

<div class="container mt-4">    
    <h3>주문상품</h3>
    <div class="row">
        <div class="col-md-8">       
            <form action="<c:url value='/user/order' />" method="post">
<%--                 <input name="member_idx" type="hidden" value="<sec:authentication property="principal.cartList"/>"> 
                <td><sec:authentication property="principal.cartList"/></td>              
              <tr>
		      <td>상품이름</td>
		      <td>수량</td>
		      <td>가격</td>
		      <td>&nbsp;</td>
		      </tr></br> 
		
		      <c:forEach items="${cartList}" var="dto">
		      <tr>
		         <td>${dto.product_name}</td>
		         <td>${dto.product_qty}</td>
		         <%-- <td>${dto.price}</td> 
		      </tr></br>
		      </c:forEach>	--%>	 
		      		      																					
			<div class="row" style="text-align:center;">
				<div class="col-md-12" >
					<div class="table-wrap" >
						<table class="table">
							<thead class="thead-primary">
								<tr>
									<th>&nbsp;</th> 
									<th>&nbsp;</th>
									<th>Product</th>
									<th>Price</th>
									<th>Qty</th>									 
								</tr>
							</thead>
							<tbody>														
									<c:forEach items="${cartList}" var="dto">						
									<tr class="alert" role="alert">
  										<td>&nbsp;</td>
										<td><a href="#"><img class="img" src="${dto.image_route}"></a></td>									
										<td>${dto.product_name}</td>
										<td>${dto.price} </td>
										<td>${dto.product_qty}</td>	 
									</tr>														
									</c:forEach>																																										
							</tbody>
						</table>
					</div>
				</div>
			</div>																																					
								
									     		          
		      
                <hr class="my-4"> 
            </form>
        </div>
    </div>   
    
    <h3>주문자 정보</h3>
    <div class="row">
        <div class="col-md-8">
            <form action="<c:url value='/user/cart3' />" method="post">
                <input name="member_idx" type="hidden" value="<sec:authentication property="principal.memberVO.member_idx"/>">
                <p>주문아이디 : <sec:authentication property="principal.memberVO.member_id"/></p>
                <p>주문자이름 : <sec:authentication property="principal.memberVO.member_name"/></p>
                <p>휴대폰 : <sec:authentication property="principal.memberVO.tel"/> </p>
                <p>이메일 : <sec:authentication property="principal.memberVO.email"/> </p>
                <hr class="my-4">
            </form>
        </div>
    </div>

    <h3>배송 정보</h3>
    <div class="row">
        <div class="col-md-8">
            <form action="<c:url value='/user/cart3' />" method="post">
                <input name="member_idx" type="hidden" value="<sec:authentication property="principal.memberVO.member_idx"/>">
                <p>배송지 : <sec:authentication property="principal.memberVO.address"/> </p>
                <hr class="my-4">
            </form>
                <!-- <button id="payment" type="button" class="btn-outline-dark btn-sm">결제하기</button> -->
        </div>
    </div>
    
    <h3>결제 정보</h3>   
    <div class="table-wrap col-8"><div class="accordion" id="accordionExample">
        <div class="accordion-item">
          <h4 class="accordion-header" id="headingOne">
            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
             무통장입금
            </button>
          </h4>
          <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
            <div class="accordion-body">
             <select class="form-select" aria-label="Default select example">
                <option selected>---은행 선택---</option>
                <option value="1">우리은행 1234567890 (주)Barny</option>
                <option value="2">농협은행 1234567890 (주)Barny</option>
              </select>

            </div>
          </div>
        </div>
        <div class="accordion-item">
          <h4 class="accordion-header" id="headingTwo">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
              카드결제
            </button>
          </h4>
          <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
            <div class="accordion-body">
              <button id="payment" type="button" class="btn btn-secondary btn-sm">결제하기</button>
            </div>
          </div>
        </div>
      </div>
    </div>
</div>
</div>
<!-- <button type="submit" class="orderPage btn-outline-dark btn-sm" href="/user/orderPage">주문하기</button> -->
<div class="text-center mb-5 mt-5">
    <a class="btn btn-secondary btn-lg text-uppercase" href="/orderPage">주문하기!</a>
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
<!-- Bootstrap core JS-->
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="/static/main_page/js/scripts.js"></script>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

</body>

<script>
	$(document).ready(function(){
			
	    var IMP = window.IMP;
	    IMP.init("imp13011359");
	    
	    $("#payment").click(function(event) {
	    
	    IMP.request_pay({
	        pg : 'inicis',
	        pay_method : 'card',
	        merchant_uid : 'merchant_' + new Date().getTime(),
	        name : 'A패키지',
	        amount : 100,
	        buyer_email : '5678@naver.com',
	        buyer_name : '홍길삼',
	        buyer_tel : '010-1234-5678',
	        buyer_addr : '서울시 종로구',
	        buyer_postcode : '123-456'
	    }, function(rsp) {
	        if ( rsp.success ) {
	        	//[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
	        	jQuery.ajax({
	        		url: "/board/purchase_list", //cross-domain error가 발생하지 않도록 동일한 도메인으로 전송
	        		type: 'POST',
	        		dataType: 'json',
	        		data: {
	    	    		imp_uid : rsp.imp_uid
	    	    		//기타 필요한 데이터가 있으면 추가 전달
	        		}
	        	}).done(function(data) {
	        		//[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
	        		if ( everythings_fine ) {
	        			var msg = '결제가 완료되었습니다.';
	        			msg += '\n고유ID : ' + rsp.imp_uid;
	        			msg += '\n상점 거래ID : ' + rsp.merchant_uid;
	        			msg += '\결제 금액 : ' + rsp.paid_amount;
	        			msg += '카드 승인번호 : ' + rsp.apply_num;

	        			alert(msg);
	        		} else {
	        			//[3] 아직 제대로 결제가 되지 않았습니다.
	        			//[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
	        		}
	        	});
	        	location.href='${pageContext.request.contextPath}/orderPage';
	        } else {
	            var msg = '결제에 실패하였습니다.'; 
	            msg += '에러내용 : ' + rsp.error_msg;

	            alert(msg);
	        }
	    });
	    });
	});    
	    
	   
</script>
</html>