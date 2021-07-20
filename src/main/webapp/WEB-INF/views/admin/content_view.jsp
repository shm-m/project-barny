<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <table id="list-table" width="500" cellpadding="0" cellspacing="0" border="1">
      <form action="modify" method="post">
         <input type="hidden" name="member_idx" value="${content_view.member_idx}">
         <tr>
            <td> 아이디 </td>
            <td> ${content_view.member_id} </td>
         </tr>
         <tr>
            <td> 회원번호 </td>
            <td> ${content_view.member_idx} </td>
         </tr>
         <tr>
            <td> 회원이름 </td>
            <td> <input type="text" name="member_name" value="${content_view.member_name
            }"></td>
         </tr>
         <tr>
            <td> 닉네임 </td>
            <td> <input type="text" name="nickname" value="${content_view.nickname}"></td>
         </tr>
          <tr>
            <td> 이메일 </td>
            <td> <input type="text" name="email" value="${content_view.eamil}"></td>
         </tr>
          <tr>
            <td> 결제수단 </td>
            <td> <input type="text" name="payment" value="${content_view.payment}"></td>
         </tr>
         
            <tr>
            <td> 전화번호 </td>
            <td> <input type="text" name="tel" value="${content_view.tel}"></td>
         </tr>
       
          <tr>
            <td> 주소 </td>
            <td> <input type="text" name="address" value="${content_view.address}"></td>
         </tr>
       
         <tr>
            <td> 생년월일 </td>
            <td> <input type="text" name="date_of_birth" value="${content_view.date_of_birth}"></td>
         </tr>
         
          <tr>
            <td> 포인트 </td>
            <td> <input type="text" name="point" value="${content_view.point}"></td>
         </tr>
         
         
         
         <tr >
            <td colspan="2"> <input type="submit" value="수정"> &nbsp;&nbsp; <a href="list">목록보기</a> &nbsp;&nbsp; <a id="a-delete" href="${pageContext.request.contextPath}/delete?bid=${content_view.bid}">삭제</a> &nbsp;&nbsp; <a href="reply_view?bid=${content_view.bid}">답변</a></td>
         </tr>
      </form>
   </table>   

</body>
</html>