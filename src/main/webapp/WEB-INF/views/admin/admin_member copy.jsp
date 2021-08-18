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
			<td>아이디</td>
			<td>비밀번호</td>
			<td>회원번호</td>
			<td>회원이름</td>
			<td>닉네임</td>
			<td>이메일</td>
			<td>결제수단</td>
			<td>전화번호</td>
			<td>주소</td>
			<td>생년월일</td>
			<td>포인트</td>
		</tr>
		
		<c:forEach items="${admin_member}" var="dto">
		<tr>
			<td>${dto.member_id}</td>
			<td>${dto.pw}</td>
			<td>${dto.member_idx}</td>
			<td>	
				<a href="content_view?member_idx=${dto.member_idx}">${dto.member_name}</a> 
			</td>                             
			<td>${dto.nickname}</td>
			<td>${dto.email}</td>
			<td>${dto.payment}</td>
			<td>${dto.tel}</td>
			<td>${dto.address}</td>
			<td>${dto.date_of_birth}</td>
			<td>${dto.point}</td>

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