<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
      <tr>
      <td>사용자이름</td>
      <td>상품이름</td>
      <td>수량</td>
      <td>가격</td>
      </tr></br>
      
      <tr>
<!--  <p>사용자이름: <sec:authentication property="principal.memberVO.email"/></p>
      <p>사용자이름: <sec:authentication property="principal.memberVO.member_name"/></p> 
      <td><sec:authentication property="principal.username"/></td>
      <td><sec:authentication property="principal.memberVO.member_id"/></td>-->
      
      <td><sec:authentication property="principal.memberVO.member_id"/></td> 
      <td><sec:authentication property="principal.cartList"/></td>
             
<%--  <td><sec:authentication property="principal.cartList" var="cartList"/></td>
	  <c:forEach items="${cartList}" var="cart">
 	  <td><sec:authentication property="principal.cartList.product_name"/></td>
	  <td><sec:authentication property="principal.cartList.product_qty"/></td>
	  <td><sec:authentication property="principal.cartList.price"/></td> 
	  </c:forEach>--%>

      
      </tr></br>
      
      <tr>
         <td colspan="5"> <a href="order">주문하기</a> </td>		
	  </tr>	 
</body>
</html>
