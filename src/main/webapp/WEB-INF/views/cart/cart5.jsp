<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html lang="en">
  <head>
  	<title>Cart</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/style.css">

	</head>
	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-4">
					<h2 class="heading-section">장바구니</h2>
				</div>
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
						    <tr class="alert" role="alert">
						    	<td>
						    		<label class="checkbox-wrap checkbox-primary">
										  <input type="checkbox" checked>
										  <span class="checkmark"></span>
										</label>
						    	</td>
						    	<td>
						    		<div class="img" style="background-image: url(images/product-1.png);"></div>
						    	</td>
<!-- 						      <td>
						      	<div class="email">
						      		<span>Sneakers Shoes 2020 For Men </span>
						      	</div>
						      </td>
						      <td>$${dto.price}</td>
						      <td class="quantity">
					        	<div class="input-group">
				             	<input type="text" name="quantity" class="quantity form-control input-number" value="2" min="1" max="100">
				          	</div>
				          </td>
						      <td>
						      	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				            	<span aria-hidden="true"><i class="fa fa-close"></i></span>
				          	</button>
				        	</td> -->
				        	  <c:forEach items="${cartList}" var="dto">
						      <tr>
						         <td>${dto.product_name}</td>
						         <td>${dto.product_qty}</td><button id="btnUpdate">수정</button>
						         <td>${dto.price}</td>
						         <td><a class="a-delete" data-bid='${dto.member_idx}' href="${pageContext.request.contextPath}/delete/${dto.member_idx}">삭제</a></td>
						      </tr>
						      </c:forEach>
						    </tr>
						  </tbody>
						  <tr>      
					      <td colspan="5" align="right">
					          장바구니 금액 합계 :
					          <fmt:formatNumber value="${map.sumMoney}" pattern="#,###,###" /><br>
					          배송료 : 2500 원<br>
					          총합계 : <fmt:formatNumber value="${map.sum}" pattern="#,###,###" />
					      </td>
					      </tr>
						</table>
						      <button type="button" id="btnDelete">장바구니 비우기</button>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

	</body>
</html>

