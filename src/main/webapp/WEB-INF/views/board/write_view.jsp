<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Find your own drink, Barny</title>
</head>
<body>
	<table id="list-table" width="500" cellpadding="0" cellspacing="0" border="1">
		<form action="write" method="post">
			
			<tr>
				<td> 제목 </td>
				<td> <input type="text" name="b_title" size="50"></td>
			</tr>
			
			<tr>
				<td> 내용 </td>
				<td> <textarea rows="10" name="b_content" ></textarea></td>
			</tr>
			<tr >
			
<!-- 			?물움표뒤에오는것은(?는 get방식) 주소값 get방식인지post방식인지 알수있다   &nbsp;&nbsp :스페이스 두칸--->
				<td colspan="2"> <input type="submit" value="입력"> &nbsp;&nbsp; <a href="list">목록보기</a></td>
			</tr>
		</form>
	</table>	
		

</body>
</html>
