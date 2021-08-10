<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cart</title>
<script>
/*       $(".cart").click(function()) {
    	  var product_name = $("#product_name").val();
    	  var product_qty = $(".numBox").val();
    	  var price = $("#price").val();
    	  
    	  console.log("product_name : " + product_name);
    	  console.log("product_qty : " + product_qty);
    	  console.log("price : " + price);
    	  
    	  var data = {
    			  product_name : product_name,    			  
    			  product_qty : product_qty,
    			  price : price
    	  };
    	  
    	  $.ajax({
    		  url : "/cart/cart3",
    		  type : "post",
    		  data : data,
    		  datatype : ,
    		  success : funtion(result) {
    			  if(result == 1) {
    			  	alert("장바구니 담기 성공");
    			  	$(".numBox").val("1");  
    			  } else {
    				  alert("로그인 한 회원만 사용할 수 있습니다.")
    				  $("numBox").val("1");
    			  }
    		  },
    		  error : function() {
    			  alert("장바구니 담기 실패");
    		  }				    	      	  
    	  });
      }); */
      </script>
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
    <%-- <div class="row">
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
    
    <c:choose>
    	<c:when test="${map.count == 0 }" >
    	장바구니가 비었습니다.
    	</c:when>
    	
    	<c:otherwise>
        <form id="form1" name="form1" method="post"
        action="${path}/shop/cart/update.do">
            <table border="1" width="400px">    		
    
    <tr>
      <td>사용자이름</td>
      <td>상품이름</td>
      <td>수량</td>
      <td>가격</td>
      <td>&nbsp;</td>
      </tr></br>
      
      <c:foreach var="row" items="${map.cartList }">
	      <tr aling="center">      
	      <td>${row.product_name }</td> 
	      <td><fmt:formatNumber value="${row.price }" pattern="#,###,###" /></td> 
	      <td><input type="number" name="product_qty"  
	      		style="width:30px;" value="<fmt:formatNumber value="${row.product_qty}" pattern="#,###,###" />">
	            <input type="hidden" name="member_idx" value=${row.member_idx }></td>
	      <td><fmt:formatNumber value="${row.money }" pattern="#,###,###" /></td>
	      <td><a href="${path}/shop/cart/delete.do?cart_id=${row.member_idx}">[삭제]</a></td>                
	      </tr>
      </c:foreach> 
      

      <td colspan="5" align="right">
          장바구니 금액 합계 :
          <fmt:formatNumber value="${map.sumMoney}" pattern="#,###,###" /><br>
          배송료 : ${map.fee}<br>
          총합계 : <fmt:formatNumber value="${map.sum}" pattern="#,###,###" />
      </td></tr>
      </table>
      <button id="btnUpdate">수정</button>
      <button type="button" id="btnDelete">장바구니 비우기</button>
	  </form>
	</c:otherwise>
	</c:choose>
	
	<button type = "button" id="btnList">상품목록</button>  


</body>
</html>
