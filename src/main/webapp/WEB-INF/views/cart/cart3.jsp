<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cart</title>
</head>
<body>
<%--       <tr>
      <td>사용자이름</td>
      <td>상품이름</td>
      <td>수량</td>
      <td>가격</td>
      </tr></br>
      
      <tr>      
      <td><sec:authentication property="principal.memberVO.member_id"/></td> 
      <td><sec:authentication property="principal.cartList"/></td>     
      </tr></br> --%>
      
    <h2>장바구니</h2>
    <div class="row">
        <div class="col-md-8">
            <form action="<c:url value='/user/order' />" method="post">
                <input name="member_idx" type="hidden" value="<sec:authentication property="principal.cartList"/>"> 
                <td><sec:authentication property="principal.cartList"/></td>
                <hr class="my-4">
            </form>
            <div class="order">
                <p><a class="btn btn-outline-dark btn-sm" href="order">주문하기</a></p>
            </div>
        </div>
    </div>

</body>
</html>
