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

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Order</title>

</head>
<body>
    
    <h4>주문상품</h4>
    <div class="row">
        <div class="col-md-8">
            <form action="<c:url value='/user/order' />" method="post">
                <input name="member_idx" type="hidden" value="<sec:authentication property="principal.cartList"/>"> 
                <td><sec:authentication property="principal.cartList"/></td>
                <hr class="my-4">
            </form>
        </div>
    </div>

    <h4>주문자 정보</h4>
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

    <h4>배송 정보</h4>
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
    
       <h4>결제 정보</h4>   

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
              <button id="payment" type="button" class="btn-outline-dark btn-sm">결제하기</button>
            </div>
          </div>
        </div>
      </div>
    </div>

<button type="submit" class="orderPage btn-outline-dark btn-sm" href="/user/orderPage">주문하기</button>

</body>

<script>
	$(document).ready(function(){
			
	    var IMP = window.IMP;
	    IMP.init("imp13011359");
	    
	    $("#payment").click(function(event) {
	    
	    IMP.request_pay({
	        pg : 'kakaopay',
	        pay_method : 'card',
	        merchant_uid : 'merchant_' + new Date().getTime(),
	        name : 'A패키지',
	        amount : 14000,
	        buyer_email : '12345@naver.com',
	        buyer_name : '홍길동',
	        buyer_tel : '1234-5678',
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