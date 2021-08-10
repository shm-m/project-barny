<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1:1 write view</title>
</head>
<body>
	<table id="list-table" width="500" cellpadding="0" cellspacing="0" border="1">
		<form action="write_my_view" method="post">
		
			<select name="board_type_id">
			    <option value="">카테고리</option>
			    <option value="3">주문문의</option>
			    <option value="4">상품문의</option>
			    <option value="5">배송문의</option>
			    <option value="6">기타문의</option>
			</select>
			
			<tr>
				<td> 제목 </td> 
				<td> <input type="text" name="b_title" size="50"></td>
			</tr>
			
			<tr>
				<td> 내용 </td>
				<td> <textarea rows="10" name="b_content" ></textarea></td>
			</tr>
			
			
			
			<tr>
				<td colspan="2"> <input type="submit" value="입력"> &nbsp;&nbsp; <a href="/board/my_view">목록보기</a></td>
			</tr>
			
		</form>
	</table>	
		

</body>
</html>
