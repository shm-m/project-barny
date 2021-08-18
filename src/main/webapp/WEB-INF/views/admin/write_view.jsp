<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>write_view</title>
</head>
<body>
   <table width="500" cellpadding="0" cellspacing="0" border="1">
      <form action="write" method="post">
       
         <tr>
            <td> 아이디 </td>
            <td> <input type="text" name="member_id" size ="50"></td>
         </tr>

         <tr>
            <td> 비밀번호 </td>
            <td> <input type="text" name="pw" size ="50"></td>
         </tr>
         
         <tr>
            <td> 회원번호 </td>
            <td> <input type="text" name="member_idx" size = "50"></td>
         </tr>
         
         <tr>
            <td> 회원이름 </td>
            <td> <input type="text" name="member_name" size = "50"></td>
         </tr>
          
          <tr>
            <td> 닉네임 </td>
            <td> <input type="text" name="nickname" size = "50"></td>
         </tr>
         
          <tr>
            <td> 이메일 </td>
            <td> <input type="text" name="email" size = "50"></td>
         </tr>
         
          <tr>
            <td> 결제수단 </td>
            <td> <input type="text" name="payment" size = "50"></td>
         </tr>
         
          <tr>
            <td> 전화번호 </td>
            <td> <input type="text" name="tel" size = "50"></td>
         </tr>
         
          <tr>
            <td> 주소 </td>
            <td> <input type="text" name="address" size = "50"></td>
         </tr>
         
          <tr>
            <td> 생년월일 </td>
            <td> <input type="text" name="date_of_birth_str" size = "50"></td>
         </tr>
         
          <tr>
            <td> 포인트 </td>
            <td> <input type="text" name="point" size = "50"></td>
         </tr>
         
         
         <tr>
            <td colspan="2"> <input type="submit" value="입력"> &nbsp;&nbsp; <a href="admin_member">목록보기</a></td>
         </tr>
      
      </form>
   </table>   
      

</body>
</html>