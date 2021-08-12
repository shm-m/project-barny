<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
      
<%--    <h2>장바구니</h2>
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
    </div> --%>
    
    <h2>장바구니</h2>
    <c:choose>
    	<c:when test="${map.count == 0 }" >
    	장바구니가 비었습니다.
    	
<div class="text-center mb-5 mt-5">
    <a class="btn btn-secondary btn-lg text-uppercase" href="/product_main">쇼핑하러가기!</a>
</div>
    	</c:when>
    	
    	<c:otherwise>
        <form id="form1" name="form1" method="post"
        action="${path}/shop/cart/update.do">
            <table border="1" width="400px">    		
    
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
         <td>${dto.price}</td>
         <td><a class="a-delete" data-bid='${dto.product_id}' href="${pageContext.request.contextPath}/delete/${dto.product_id}">삭제</a></td>
      </tr>
      </c:forEach>
      
      <tr>      
      <td colspan="5" align="right">
          장바구니 금액 합계 :
          <fmt:formatNumber value="${map.sumMoney}" pattern="#,###,###" /><br>
          배송료 : ${map.fee}<br>
          총합계 : <fmt:formatNumber value="${map.sum}" pattern="#,###,###" />
      </td>
      </tr>
      </table>
      <button id="btnUpdate">수정</button>
      <button type="button" id="btnDelete">장바구니 비우기</button>
	  </form>
	</c:otherwise>
	</c:choose>
	
<!-- 	<button type = "button" id="btnList" a href="/product_view">상품목록</button>  -->

<div class="text-center mb-5 mt-5">
	<a class="btn btn-secondary btn-lg text-uppercase" href="/order">주문하기!</a><br>
    <a class="btn btn-secondary btn-lg text-uppercase" href="/product_main">더 쇼핑하기!</a>
</div> 


</body>
</html>
