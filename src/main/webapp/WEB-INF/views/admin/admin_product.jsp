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
			<td>상품번호</td>
			<td>상품명</td>
			<td>재고량</td>
			<td>가격</td>
			<td>상품분류번호</td>
			<td>이미지번호</td>
			<td>이미지이름</td>
			<td>확장자</td>
			<td>경로</td>
		</tr>
		
		<c:forEach items="${admin_product}" var="dto">
		<tr>
			<td>${dto.product_id}</td>
			<td>${dto.product_name}</td>
			<td>${dto.stock}</td>
			<td>	
				<a href="content_view?product_id=${dto.member_idx}">${dto.price}</a> 
			</td>                             
			<td>${dto.category_num}</td>
			<td>${dto.image_id}</td>
			<td>${dto.image_name}</td>
			<td>${dto.image_extension}</td>
			<td>${dto.image_route}</td>

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