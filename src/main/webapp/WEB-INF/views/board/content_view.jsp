<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html">
<html>
<head>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>barny(admin content)</title>
</head>
<body>
	<table id="list-table" width="500" cellpadding="0" cellspacing="0" border="1">
		<form action="modify" method="post">
			<input type="hidden" name="board_id" value="${content_view.board_id}">
			
			<tr>
				<td> 글번호 </td>
				<td> ${content_view.board_id} </td>
			</tr>
			
			<tr>
				<td> 회원번호 </td>
				<td> ${content_view.member_idx} </td>
			</tr>
			
			<tr>
				<td> 날짜 </td>
				<td>${content_view.b_date}</td>
			</tr>
			<tr>
				<td> 제목 </td>
				<td> <input type="text" name="b_title" value="${content_view.b_title}"></td>
			</tr>
			
			<tr>
				<td> 내용 </td>
				<td> <textarea rows="10" name="b_content" >${content_view.b_content}</textarea></td>
			</tr>
			
			<tr >
				<td colspan="2"> 
				<input type="submit" value="수정"> &nbsp;&nbsp; <a href="list">목록보기</a> &nbsp;&nbsp;
				<a id="a-delete" href="${pageContext.request.contextPath}/board/delete?board_id=${content_view.board_id}">삭제</a> 
				 &nbsp;&nbsp; <a href="reply_view?board_id=${content_view.board_id}">답변</a></td>
			</tr>
		</form>
	</table>	
		

</body>
</html>
