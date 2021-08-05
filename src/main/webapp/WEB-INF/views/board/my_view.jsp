<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html">
<html>
<head>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>my_view list</title>
</head>
<body>
	   <table width="500" cellpadding="0" cellspacing="0" border="1">
      <tr>
         <td>글번호 : <sec:authentication property="principal.boardVO.board_id"/></td>
         <td>회원 : <sec:authentication property="principal.boardVO.member_idx"/></td>
         <td>제목 : <sec:authentication property="principal.boardVO.b_title"/></td>
         <td>날짜 : <sec:authentication property="principal.boardVO.b_date"/></td>
         
      </tr>
      <c:forEach items="${my_view}" var="dto">
      <tr>
         <td>${dto.board_id}</td>
         <td>${dto.member_idx}</td>
         
         
         <td>
            <c:forEach begin="1" end="${dto.b_indent}">-</c:forEach>
            <a href="my_content_view?board_id=${dto.board_id}">${dto.b_title}</a></td>
         <td>${dto.b_date}</td>
      </tr>
      </c:forEach>
      <tr>
         <td colspan="5"> <a href="/board/my_view_write">글작성</a> </td>
      </tr>
   </table>

		

</body>
</html>