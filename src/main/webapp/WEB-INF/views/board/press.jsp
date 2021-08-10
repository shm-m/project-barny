<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>press</title>
</head>
<body>
	   <table width="500" cellpadding="0" cellspacing="0" border="1">
      <tr>
      
         <td>주문번호 : <sec:authentication property = "principal.boardVO.order_id"/></td>
         <td>상품 : <sec:authentication property = "principal.boardVO.category_name"/></td>
         <td>수량 : <sec:authentication property = "principal.boardVO.product_qty"/></td>
         
         
      </tr>
      
      <c:forEach items="${press}" var="dto">
      <tr>
         <td>${dto.order_id}</td>
         <td>${dto.category_name}</td>
          <td>${dto.product_qty}</td>
         
         <td>
<%--             <a href="my_content_view?board_id=${dto.board_id}">${dto.b_title}</a></td> --%>
		
      </tr>
      </c:forEach>
     
   </table>

		

</body>
</html>