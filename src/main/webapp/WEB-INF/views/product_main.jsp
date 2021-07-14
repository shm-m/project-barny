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
	
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<td>상품이미지</td>
			<td>상품이름</td>
			<td>가격</td>
		</tr>
		<c:forEach items="${product_main}" var="dto">
		<tr>
			<td>${dto.image_id}</td>
			<td>${dto.product_name}</td>
			<td>${dto.price}</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>