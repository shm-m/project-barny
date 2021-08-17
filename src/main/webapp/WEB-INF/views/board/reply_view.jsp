<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>reply_view</title>
</head>
<body>
   <table id="reply_view" width="500" cellpadding="0" cellspacing="0" border="1">
      	<form action="reply" method="post">
         <input type="hidden" name="board_id" value="${reply_view.board_id}">
         <input type="hidden" name="b_group" value="${reply_view.b_group}">
         <input type="hidden" name="b_step" value="${reply_view.b_step}">
         <input type="hidden" name="b_indent" value="${reply_view.b_indent}">
         <tr>
            <td> 번호 </td>
            <td> ${reply_view.board_id} </td>
         </tr>

         <tr>
            <td> 제목 </td>
            <td> <input type="text" name="b_title" value="${reply_view.b_title}"></td>
         </tr>
         <tr>
            <td> 내용 </td>
            <td> <textarea rows="10" name="b_content" >${reply_view.b_content}</textarea></td>
         </tr>
         <tr >
            <td colspan="2"> <input type="submit" value="답변"> &nbsp;&nbsp; <a href="my_view">목록</a></td>
         </tr>
      </form>
   </table>   
      

</body>
</html>
