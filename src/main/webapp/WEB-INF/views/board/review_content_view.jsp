<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>review content view</title>
</head>
<body>
	<table id="list-table" width="500" cellpadding="0" cellspacing="0" border="1">
		<form action="review_modify" method="post">
			<input type="hidden" name="board_id" value="${review_content_view.board_id}">
			
			<tr>
				<td> 글번호 </td>
				<td> ${review_content_view.board_id} </td>
			</tr>
			
			<tr>
				<td> 회원번호 </td>
				<td> ${review_content_view.member_idx} </td>
			</tr>
			
			<tr>
				<td> 날짜 </td>
				<td>${review_content_view.b_date}</td>
			</tr>
			
			<tr>
				<td> 좋아요 </td>
				<td>${review_content_view.like_count}</td>
			</tr>
			<tr>
				<td> 제목 </td>
				<td> <input type="text" name="b_title" value="${review_content_view.b_title}"></td>
			</tr>
			
			<tr>
				<td> 내용 </td>
				<td> <textarea rows="10" name="b_content" >${review_content_view.b_content}</textarea></td>
			</tr>
			
			<tr >
				<td colspan="2"> 
				<input type="submit" value="수정"> &nbsp;&nbsp; <a href="my_review">목록보기</a> &nbsp;&nbsp;
				<a id="a-delete" href="${pageContext.request.contextPath}/board/review_delete?board_id=${review_content_view.board_id}">삭제</a> 
				 </td>
			</tr>
		</form>
	</table>	
		

</body>
</html>
