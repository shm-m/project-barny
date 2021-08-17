<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>purchase_list</title>
</head>
<body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<table width="500" cellpadding="0" cellspacing="0" border="1">
      <tr>
         <td>주문번호<sec:authentication property="principal.orderVO.order_id"/></td>
         <td>총금액<sec:authentication property="principal.orderVO.total_price"/></td>
         <td>주문날짜<sec:authentication property="principal.orderVO.ship_date"/></td>
         <td>배송번호<sec:authentication property="principal.orderVO.ship_id"/></td>
         <td>주문상태<sec:authentication property="principal.orderVO.ship_id"/></td>
      </tr>
      <tbody>
      
      <c:choose>

				<c:when test="${empty purchase_list}" >

					<tr><td colspan="5" align="center">구매내역이 없습니다</td></tr>

				</c:when> 

				<c:when test="${!empty purchase_list}">


				<c:forEach var="orderList" items="${purchase_list}">

</c:forEach>
</c:when>
</c:choose>
      
      </tbody>
      
      
      
      <c:forEach items="${purchase_list}" var="dto">
      <tr>
         
         <td>
         
         <a class="order_id" href="${pageContext.request.contextPath}/board/purchase_view?order_id=${dto.order_id}">${dto.order_id}</a></td>
         <td>${dto.total_price}</td>
         <td>${dto.order_date}</td>
         <td>${dto.ship_id}</td>
         <td>${dto.ship_status_name}</td>
         
      </tr>
      <tr>
         <tr>
      <td><a class="ship_id"a href="${pageContext.request.contextPath}/board/ship_delete?ship_id=${dto.ship_id}"><input type="button" value="취소하기" onclick="button_event();"></a></td>
     <c:if test="${press.ship_status_id eq 2}">
          <script>
        function button_event(){
    	  if (confirm("취소할수없습니다") == true){    
    	      document.form.submit();
    	  }else{   //취소
    	      return;
    	  }
    	  }
    	  //-->
    	   </script>
       </c:if>
      <c:if test="${press.ship_status_id eq 2}">
      </c:if>
      </c:forEach>
                        
                                
   </table> 
  
   
<!-- 구매 내역 상세보기  ajax -->
   <script>
   $(document).ready(function (){
      
       $(document).on("click",".order_id",function(event){
         //prevendDefault()는 href로 연결해 주지 않고 단순히 click에 대한 처리를 하도록 해준다.
         event.preventDefault();
         
         console.log("purchase_view 호출전"); 

         var url = "/board/purchase_view";

         $.ajax({
               type: 'GET',
               url: $(this).attr("href"),
               cache : false, // 이걸 안쓰거나 true하면 수정해도 값반영이 잘안댐
               contentType:'application/json; charset=utf-8',
               dataType: 'json',// 데이터 타입을 제이슨 꼭해야함, 다른방법도 2가지있음
               success: function(result) {

               var htmls="";
               
                 $("#purchase_view").html("");   

               $("<tr>" , {
                  html :"<td>" + "주문 상세 번호" + "</td>"+  // 컬럼명들
                        "<td>" + "주문번호" + "</td>"+
                        "<td>" + "상품" + "</td>"+
                        "<td>" + "상품수량" + "</td>"
               }).appendTo("#purchase_view") // 이것을 테이블에붙임

               if(result.length < 1){
                  htmls.push("구매내역이 없습니다");
               } else {

                          $(result).each(function(){                                                          
                             htmls += '<tr>';
                             htmls += '<a href="${pageContext.request.contextPath}/content_view?product_id=' + this.product_id + '">' + this.product_name + '</a></td>';


                             htmls += '<td>'+ this.order_detail_id + '</td>';
                             htmls += '<td>'+ this.order_id + '</td>';
                             htmls += '<td>'
                                 htmls += '<a href="${pageContext.request.contextPath}/product_view?product_id=' + this.product_id+ '">' + this.product_name + '</a></td>';

                             htmls += '<td>'+ this.product_qty + '</td>';

                             
                             htmls += '</tr>';                                                      
                         });   //each end
               }

               $("#purchase_view").append(htmls);
               
              }, error: function (a) {
                 console.log(a);
             }

         });   // Ajax end
          
      }); 
   });   
   </script>
     
     <script>
   $(document).ready(function (){
      
       $(document).on("click","#product_view",function(event){
         //prevendDefault()는 href로 연결해 주지 않고 단순히 click에 대한 처리를 하도록 해준다.
         event.preventDefault();
         
         console.log("product_view 호출전"); 

         var url = "/product/product_view";

         $.ajax({
               type: 'GET',
               url: url,
               cache : false, // 이걸 안쓰거나 true하면 수정해도 값반영이 잘안댐
               contentType:'application/json; charset=utf-8',
               dataType: 'json',// 데이터 타입을 제이슨 꼭해야함, 다른방법도 2가지있음
              success: function(result) {

               var htmls="";
               
                 $("#purchase-list").html("");   

               $("<tr>" , {
                  html : "<td>" +  "주문번호" + "</td>"+  // 컬럼명들
                        "<td>" + "주문날짜" + "</td>"+
                        "<td>" + "총금액" + "</td>"
               }).appendTo("#product_view") // 이것을 테이블에붙임

               if(result.length < 1){
                  htmls.push("구매내역이 없습니다");
               } else {

                          $(result).each(function(){                                                          
                             htmls += '<tr>';
                             
                             htmls += '<td>'
                             htmls += '<a class="product_name" href="${pageContext.request.contextPath}/product/product_name?product_name=' + this.product_name + '">' + this.order_id + '</a></td>';
                             htmls += '<td>'+ this.order_date + '</td>';
                             htmls += '<td>'+ this.total_price + '</td>';
                            
                             htmls += '</tr>';                                                      
                         });   //each end
               }

               $("#purchase-list").append(htmls);
               
              }, error: function (e) {
                 console.log(e);
             }

         });   // Ajax end
          
      }); 
   });   
   </script>

     <table id="purchase_view" width="500" cellpadding="0" cellspacing="0" border="1">
		

</body>
</html>