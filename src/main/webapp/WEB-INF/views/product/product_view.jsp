<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <table id="list-table" width="500" cellpadding="0" cellspacing="0" border="1">
      <form role="form" method="post">
         <input type="hidden" name="product_id" value="${product_view.product_id}">

         <tr>
            <td> 상품이름 </td>
            <td> ${product_view.product_name} </td>
         </tr>
         <tr>
            <td> 가격 </td>
            <td> ${product_view.price} 원</td>
         </tr>

      </form>
   </table>   

</body>
</html>