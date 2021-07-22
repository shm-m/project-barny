<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
   <table id="list-table" width="500" cellpadding="0" cellspacing="0" border="1">
      <form role="form" method="post">
         <input type="hidden" name="member_idx" value="${cart.member_idx}">

	<!-- 장바구니 불러오기 -->
         <tr>
            <td> 상품이름 </td>
            <td> ${cart.product_name} </td>
         </tr>
         <tr>
            <td> 수량 </td>
            <td> ${cart.price} </td>
         </tr>
         <tr>
            <td> 가격 </td>
            <td> ${cart.price} 원</td>
         </tr>
         </form>
         <form role="form" method="post">
         <input type="hidden" name="member_idx" value="${order.member_idx}">
    <!-- 주문자 회원정보 불러오기 -->
         <tr>
            <td> 주문자이름 </td>
            <td> ${order.member_name} </td>
         </tr>
         <tr>
            <td> 휴대폰 </td>
            <td> ${order.tel} </td>
         </tr>
         <tr>
            <td> 주소 </td>
            <td> ${order.address} </td>
         </tr>
      </form>
      
      <form action="#" method="get">
        받으시는 분 : <input type="text" name="uname" /><br />
        연락처 : <input type="text" name="uphone1" size="5" /> - 
        		<input type="text" name="uphone2" size="5" /> - 
        		<input type="text" name="uphone3" size="5" /><br />
        우편번호 : <input type="text" name="postcode" size="6" /><br />
        주소 : <input type="text" name="address" size="20" /><br />
      </form>
        
      <div class="btn">
         <p><a class="btn btn-outline-dark btn-sm" href="/payment/payment">구매하기</a></p>
      </div>

   </table>   

</body>
</html>