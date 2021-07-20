<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>mypage_barny</title>
</head>
<body>
	
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<td>글번호</td>
			<td>회원번호</td>
			<td>제목</td>
			<td>날짜</td>
			
		</tr>
		<c:forEach items="${list}" var="dto">
		<tr>
			<td>${dto.board_id}</td>
			<td>${dto.member_idx}</td>
			
			<td>
				<c:forEach begin="1" end="${dto.b_indent}">-</c:forEach>
				<a href="content_view?board_id=${dto.board_id}">${dto.b_title}</a></td>
			<td>${dto.b_date}</td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan="5"> <a href="write_view">글작성</a> </td>
		</tr>
	</table>
</body>
</html>