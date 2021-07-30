<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html">
<html>
<head>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>purchase_list</title>
</head>
<body>
      <table width="500" cellpadding="0" cellspacing="0" border="1">
      <tr>
         <td>주문번호</td>
         <td>주문날짜</td>
         <td>총금액</td>
         
         
      </tr>
      <c:forEach items="${purchase_list}" var="dto">
      <tr>
         <td>${dto.order_id}</td>
         <td>${dto.order_date}</td>
          
          <td>
            <a href="/board/purchase_view?product_id=${dto.order_id}">${dto.total_price}</a></td>
      </tr>
      </c:forEach>
   </table>

      

</body>
</html>