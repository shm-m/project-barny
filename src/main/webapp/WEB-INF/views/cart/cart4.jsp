<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
      <p class = "cart4">
      <button type="button" class="cart4">장바구니</button>
      
      <script>
/*       $(".cart4").click(function()) {
    	  var product_id = $("#product_id").val();
    	  var product_qty = $(".numBox").val();
    	  
    	  var data = {
    			  product_id : product_id,
    			  product_qty : product_qty
    	  };
    	  
    	  $.ajax({
    		  url : "/cart/cart4",
    		  type : "post",
    		  data : data,
    		  success : funtion() {
    			  alert("장바구니 담기 성공");
    			  $(".numBox").val("1");
    		  },
    		  error : function() {
    			  alert("장바구니 담기 실패");
    		  }				    	      	  
    	  });
      }); */
      
      $(".cart").click(function()) {
    	  var product_id = $("#product_id").val();
    	  var product_qty = $(".numBox").val();
    	  
    	  console.log("product_id : " + product_id);
    	  console.log("product_qty : " + product_qty);
    	  
    	  // ReplyVO 형태로 데이터 생성
    	  var data = {
    			  product_id : product_id,
    			  product_qty : product_qty
    	  };
    	  
    	  $.ajax({
    		  url : "/cart/cart3",
    		  type : "get",
    		  data : data,
    		  success : funtion(result) {
    			  if(result == 1) {
    			  	alert("장바구니 담기 성공");
    			  	$(".numBox").val("1");  
    			  } else {
    				  alert("회원만 사용할 수 있습니다.")
    				  $("numBox").val("1");
    			  }
    		  },
    		  error : function() {
    			  alert("장바구니 담기 실패");
    		  }				    	      	  
    	  });
      });
      </script>
</body>
</html>
