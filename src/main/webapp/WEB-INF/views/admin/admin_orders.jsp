<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<table width="960" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<td>주문상세번호</td>
			<td>총주문금액</td>
			<td>주문날짜</td>
			<td>회원번호</td>
			<td>회원이름</td>
			<td>결제수단</td>
			<td>주문번호</td>	
		</tr>
		
		<c:forEach items="${admin_orders}" var="dto">
		<tr>
			<td>${dto.order_detail_id}</td>
			<td>${dto.total_price}</td>
			<td>	
				<a href="content_view_orders?member_idx=${dto.member_idx}">${dto.order_date}</a> 
			</td>                             
			<td>${dto.member_idx}</td>
			<td>${dto.member_name}</td>
			<td>${dto.payment}</td>
			<td>${dto.order_id}</td>
			

			<!-- <td>
				<c:forEach begin="1" end="${vo.bindent}">-</c:forEach>
				<a href="content_view?bid=${vo.bid}">${vo.btitle}</a>
			</td> -->

		</tr>
		</c:forEach>
		
		<tr>
         <td colspan="960"> <a href="write_view">글작성</a> </td>
      </tr>
      
	</table>
</body>
</html>