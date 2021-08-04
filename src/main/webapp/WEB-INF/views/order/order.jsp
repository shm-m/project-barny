<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Order</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
            <div class="payment">
                <p><a class="btn btn-outline-dark btn-sm" href="/user/payment">결제하기</a></p>
            </div>
        </div>
    </div>

</body>
</html>