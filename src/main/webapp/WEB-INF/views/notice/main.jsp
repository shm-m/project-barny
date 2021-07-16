<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Barny:: 찾아가는 Bar</title>
</head>
<script type="text/javascript">
	$(document).ready(function (){
	   $('.a-delete').click(function(event){
		  //prevendDefault()는 href로 연결해 주지 않고 단순히 click에 대한 처리를 하도록 해준다.
		  event.preventDefault();
		  console.log("ajax 호출전"); 

		  var aObj = this;
		  func_confirm(aObj);

	    });
	 });   
 </script>
 <script type="text/javascript">
	function func_confirm(aObj) {
	   if (confirm("글을 삭제하시겠습니까? \n(삭제한 글은 복구가 불가능합니다.)")) {
		   		  //해당 tr제거
		  var trObj =  $(aObj).parent().parent();
		  
		   $.ajax({
			  type : "DELETE",
			  url : $(aObj).attr("href"),
			  success: function (result) {       
				  console.log(result); 
				if(result == "SUCCESS"){
					 //getList();
				   $(trObj).remove();  
				   alert("삭제되었습니다.");
				}                       
			  },
			  error: function (e) {
				alert("작업이 취소되었습니다.");
				  console.log(e);
			  }
		  })
	   } else {
		alert("작업이 취소되었습니다.");
	   }
   }
</script>
<body>
	
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<td>공지사항 번호</td>
			<td>공지 제목</td>
			<td>게시 날짜</td>
			<td>삭제</td>
		</tr>
		<c:forEach items="${list}" var="vo">
		<tr>
			<td>${vo.board_id}</td>
			<td>
				<a href="${pageContext.request.contextPath}/notice/content/${vo.board_id}">${vo.b_title}</a></td>
			<td>${vo.b_date}</td>
			<td><a class="a-delete" data-board_id='${vo.board_id}' href="${pageContext.request.contextPath}/notice/content/${vo.board_id}">삭제</a></td>
		</tr>
		</c:forEach>
		<tr>
			<td><button type="button" title="글쓰기" onclick="location.href='write_view'">글쓰기</button></td>
		</tr>
	</table>

	<c:if test="${pageMaker.prev}">
		<!-- 얘가 트루이면 아래 실행하라고 -->
		<a href="main${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
	</c:if>

	<c:forEach var="idx" begin="${pageMaker.startPage }"
		end="${pageMaker.endPage }">
		<!--<c:out value="${pageMaker.cri.pageNum == idx?'':''}" />-->
		<a href="main${pageMaker.makeQuery(idx)}">${idx}</a>
	</c:forEach>
	<!-- 페이지 메이커에 링크 걸어줌 -->

	<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		<a href="main${pageMaker.makeQuery(pageMaker.endPage +1) }"> » </a>
	</c:if>
	<br>

</body>
</html>