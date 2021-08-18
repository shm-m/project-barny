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
      <form action="modify" method="post">
         <input type="hidden" name="member_idx" value="${content_view.member_idx}">
         <tr>
            <td> 주문상세번호 </td>
            <td> ${content_view_orders.order_detail_id} </td>
         </tr>
        
         <tr>
            <td> 총주문금액 </td>
            <td> <input type="text" name="total_price" value="${content_view_orders.total_price}"></td>
         </tr>

         <tr>
            <td> 주문날짜 </td>
            <td> ${content_view_orders.order_date} </td>
         </tr>

         <tr>
            <td> 회원번호 </td>
            <td> ${content_view_orders.member_idx} </td>
         </tr>

         <tr>
            <td> 회원이름 </td>
            <td> ${content_view_orders.member_name} </td>
         </tr>
          
         <tr>
            <td> 결제수단 </td>
            <td> <input type="text" name="payment" value="${content_view_orders.payment}"></td>
         </tr>
         
         
         <tr>
            <td> 주문번호 </td>
            <td> ${content_view_orders.order_id} </td>
         </tr>
         
       
         
         
         
         <tr >
            <td colspan="2"> <input type="submit" value="수정"> &nbsp;&nbsp; <a href="admin_member">목록보기</a> &nbsp;&nbsp; <a id="a-delete" href="${pageContext.request.contextPath}/admin/delete?member_idx=${content_view.member_idx}">삭제</a> &nbsp;&nbsp; <a href="reply_view?member_idx=${content_view.member_idx}">답변</a></td>
         </tr>
      </form>
   </table>   

</body>
</html>