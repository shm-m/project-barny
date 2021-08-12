<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>press</title>
</head>
<body>
	   <table width="500" cellpadding="0" cellspacing="0" border="1">
      <tr>
      
         <td>구독 : <sec:authentication property = "principal.productMainVO.subscribe"/></td>
         
         
      </tr>
       <tbody>
      
      
      <c:forEach items="${press}" var="dto">
      <tr>
         <td>${dto.subscribe}</td>
         <tr>
      <td colspan="5"><a href="${pageContext.request.contextPath}/board/update_modify?subscribe=${dto.subscribe}"><input type="button" value="취소하기" onclick="button_event();"></a></td>
    	  <tr><td>구독상품</td></tr>
    	  <td><a href="${pageContext.request.contextPath}/product_view?product_name=${dto.product_name}">${dto.product_name}</a></td>
      <script>
      function button_event(){
    	  if (confirm("지정된 다음 달 결제일까지는 구독이 유효합니다") == true){    
    	      document.form.submit();
    	  }else{   //취소
    	      return;
    	  }
    	  }
    	  //-->
    	  </script>
    	 
    	   


      </tr>
      </c:forEach>

      
      
            <c:choose>

				<c:when test="${empty press}" >

					<tr><td colspan="5" align="center">구독정보가 없습니다</td></tr>

				</c:when> 

				<c:when test="${!empty press}">


				<c:forEach var="pressList" items="${press}">

</c:forEach>
</c:when>
</c:choose>
      
      </tbody>
     
   </table>

		                               
</body>
</html>