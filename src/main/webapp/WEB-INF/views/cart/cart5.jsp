<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html lang="en">
<head>
<title>Cart</title>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
<meta name="description" content=""/>
<meta name="author" content=""/>
<title>Find your drink, Barny</title>
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

<link rel="stylesheet" href="/static/cart/css/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!--JQuery-->
<script src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
<script src="/static/cart/js/jquery.min.js"></script>
<script src="/static/cart/js/popper.js"></script>
<script src="/static/cart/js/bootstrap.min.js"></script> 
<script src="/static/cart/js/main.js"></script>

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

	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-4">
					<h2 class="heading-section">장바구니</h2>
				</div>
			</div>

 			<div>
				<label class="control control--checkbox mx-2"> 
				<input type="checkbox" id="allCheck" name="allCheck" />
					<div class="control__indicator"></div>
				</label> <a class="selection" style="margin-left: 2.4rem;">전체 선택 /</a> 
				<input type="button" value="선택 삭제 " class="selection" onclick="deleteValue();" />
			</div> 

			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
						<table class="table">
							<thead class="thead-primary">
								<tr>
									<th>&nbsp;</th>
									<th>&nbsp;</th>
									<th>Product</th>
									<th>Price</th>
									<th>Qty</th>
									<th>&nbsp;</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${cartList}" var="dto">
								<tr class="alert" role="alert">
 									<th scope="row">
 									<label class="control control--checkbox">
											<input type="checkbox" value="${dto.product_id}" name="RowCheck" />
											<div class="control__indicator"></div>
									</label>
									</th> 
									<td>
										<%-- <div class="img" src="${dto.image_route}"></div> --%>
										<a href="#"><img class="img" src="${dto.image_route}"></a>
									</td>									
										<td>
											<div class="productname">
												<span>${dto.product_name} </span>
											</div>
										</td>
										<td>${dto.price} </td>
										<td class="qty">
											<div class="input-group"> 
												<%-- <input type="text" name="qty" class="qty form-control input-number" value="${dto.product_qty}" min="1" max="10"> --%>
												<input id="product_qty" name="product_qty" type="number" value="${dto.product_qty}" />
                                                <input id="product_id" name="product_id" type="hidden" value="${dto.product_id}">
												<button id="update" type="button" class="btn-outline-dark btn-sm">수정</button>
												
											</div> 
									<!--<button id="update" type="button" class="btn-outline-dark btn-sm">수정</button> -->										</td>
									</c:forEach>
									</tr>
									</tbody>
								<tr>
									<td id ="total_price" colspan="5" align="right">
									장바구니 금액 합계 : <fmt:formatNumber value="${map.sumMoney}" pattern="#,###,###" />원 <br>
									배송료 : ${map.fee} 원<br> 
									총 주문금액 : <fmt:formatNumber value="${map.sum}" pattern="#,###,###" />원
									</td>
								</tr>
						</table>
					</div>
				</div>
			</div>			
		</div>
	<div class="text-center mb-5 mt-5">
		<a class="btn btn-secondary btn-sm text-uppercase" href="/user/order">주문하기!</a><br>
		<a class="btn btn-secondary btn-sm text-uppercase" href="/product_main">더 쇼핑하기!</a>
	</div>	
	
	</section>
	

<!-- 수량 변경 -->
	<script type="text/javascript">
	$(document).ready(function(){
		
		$("#update").click(function(event) {
	   		
	   		event.preventDefault();
	   	 	  
		 	  var product_id = $("#product_id").val();
		 	  var product_qty = $("#product_qty").val();
		 	  
		 	  
		 	  var update = {
		 			 product_id : product_id,    			  
		 			 product_qty : product_qty
		 	  };
		 	  
		      //dataType: 'json',
		         $.ajax({
		            type: "POST",
		            url: "/user/updateCart",
		            cache: false,
		            contentType: 'application/json; charset=utf-8',
		            data: update,
		            success: function (result) {   
		            	// console.log("수정 성공");
		            	location.href = "/user/cart5";
		            },
		            error: function (e) {		             
		               console.log("실패");
		            }
		         });	       

		});
	 });
	</script>
	
<!-- 삭제 체크박스 -->
	<script type="text/javascript">
		$(function(){
			var chkObj = document.getElementsByName("RowCheck");
			var rowCnt = chkObj.length;

			$("input[name='allCheck']").click(function(){
				var chk_listArr = $("input[name='RowCheck']");
				for (var i=0; i<chk_listArr.length; i++){
					chk_listArr[i].checked = this.checked;
				}
			});
			$("input[name='RowCheck']").click(function(){
				if($("input[name='RowCheck']:checked").length == rowCnt){
					$("input[name='allCheck']")[0].checked = true;
				}
				else{
					$("input[name='allCheck']")[0].checked = false;
				}
			});
		});

		function deleteValue(){
			var url = "${pageContext.request.contextPath}/user/delete";
			var valueArr = new Array();
			var list = $("input[name='RowCheck']");
			var trArray = new Array();
			
			for(var i = 0; i < list.length; i++){
				
				if(list[i].checked){ //선택되어 있으면 배열에 값을 저장함
					valueArr.push(list[i].value);
				
					trArray = $(list[i]).parent().parent().parent();
				}
				
			}
			if (valueArr.length == 0){
				alert("선택된 글이 없습니다.");
			}
			else{
				if (confirm("해당 상품을 삭제하시겠습니까?")) {
					// var chk = confirm("정말 삭제하시겠습니까?");
					$.ajax({
						url : url,
						type : 'POST',
						traditional : true,
						data : {
							valueArr : valueArr
						},
						success: function(result){
							
							if(result == "SUCCESS") {
								//alert("삭제되었습니다.");								
								//for(var i = 0; i < trArray.length; i++){									
								//	$(trArray[i]).remove();
								//}
								location.href = "/user/cart5";
								
								
								
							}
							else{
								alert("삭제가 실패하였습니다.");
							}
						}
					});
				} else {
					alert("작업이 취소되었습니다.");
				}
			}
		}
</script>

</body>

</html>