<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<title>product_view</title>
<style>
   .collapsing {
     position: relative;
     height: 0;
     overflow: hidden;
     transition: height ease !important;
   }
</style>
</head>
<body>
   <table id="list-table" width="500" cellpadding="0" cellspacing="0" border="1">
      <form role="form" method="post">
         <input type="hidden" name="product_id" value="${product_view.product_id}">

         <tr>
            <td> 상품이름 </td>
            <td> ${product_view.product_name} </td>
         </tr>
         <tr>
            <td> 가격 </td>
            <td> ${product_view.price} 원</td>
         </tr>

      </form>
      <div class="btn">
         <p><a class="btn btn-outline-dark btn-sm" href="/user/cart3">장바구니에 담기</a></p>
         <p><a class="btn btn-outline-dark btn-sm" href="/user/order">바로 구매하기</a></p>
      </div>

   </table>   
   <br>
   <!--후기 list-->

   
   <div class="table-wrap col-8">
      <table class="table myaccordion table-hover" id="accordion">
         <form role="form" method="post" id="reviewForm" action="${pageContext.request.contextPath}/product_view?product_id=${product_view.product_id}">
            <thead>
               <tr>
                  <th class="th-sm">글번호</th>
                  <th class="th-sm">제목</th>
                  <th class="th-sm">작성자</th>
                  <th class="th-sm">작성일</th>
                  <th class="th-sm">좋아요</th>
                  <th class="th-sm">조회</th>
               </tr>
            </thead>
            <tbody>
            <c:forEach items="${list}" var="vo" varStatus="status">
               <tr data-toggle="collapse" data-target="#collapse${status.index}" aria-expanded="true" aria-controls="collapse" class="collapsed" >
                  <td id="board_id" value="${vo.board_id}">${vo.board_id}</td>
                  <td>${vo.b_title}</td>
                  <td>${vo.nickname}</td>
                  <td>${vo.b_date}</td>
                  <td id="like_count" value="${vo.like_count}">${vo.like_count}</td>
                  <td id="b_hit" value="${vo.b_hit}">${vo.b_hit}</td>
                  <i class="fa" aria-hidden="false"></i>
               </tr>
               <tr>
                  <td colspan="6" id="collapse${status.index}" class="collapse acc" data-parent="#accordion" aria-expanded="false">
                     <p>${vo.b_content}</p>
                  </td>
               </tr>
            </c:forEach>
         </tbody>
            
         </form>
         <button type="button" onclick="location.href='/user/review/write_view/product_view?product_id=${product_view.product_id}'">후기 등록</button>
      </table>
   </div>
<!--page-->
   <nav aria-label="Page navigation example">
      <ul class="pagination justify-content-center">
          <c:if test="${pageMaker.prev}">
              <li class="page-item">
                  <a class="page-link" href="${pageMaker.makeNum(pageMaker.startPage - 1)}&product_id=${product_view.product_id}" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                      <span class="sr-only">Previous</span>
                  </a>
              </li>
          </c:if>
          <c:forEach var="idx" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
              <li class="page-item "><a class="page-link" href="${pageMaker.makeNum(idx)}&product_id=${product_view.product_id}">
                      ${idx}
              </a>
              </li>
          </c:forEach>
          <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
              <li class="page-item">
                  <a class="page-link" aria-label="Next" href="${pageMaker.makeQuery(pageMaker.endPage +1) }&product_id=${product_view.product_id}">
                      <span aria-hidden="true">&raquo;</span>
                      <span class="sr-only">Next</span>
                  </a>
              </li>
          </c:if>
      </ul>
  </nav>

   <script src="/static/js/popper.js"></script>


   
      
</body>
<!--조회수-->
<script type="text/javascript">
   $(document).ready(function(){

      $('.collapsed').click(function (event) {

         event.preventDefault(); //실행했을때 나머지 이벤은 내가 컨트롤 하겠다

         var aObj = this;

         console.log($('#reviewForm').attr("action"));
         console.log($(aObj).children('#board_id').val());
         console.log($(aObj).children('#board_id').text());
         
         
         var form = {
            board_id: $(aObj).children('#board_id').text()					
         };

         //dataType: 'json',
         $.ajax({
            type: "PUT",
            url: "/product_view",
            cache: false,
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify(form), 
            success: function (result) {       
                  $(aObj).children('#b_hit').text(result); 
                  console.log("조회수 1 증가");
            },
            error: function (e) {
               alert("실패");
               console.log(e);
            }
         });	       

      });
   });

</script>

</html>