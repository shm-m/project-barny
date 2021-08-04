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
