<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="/static/css/bootstrap.min.css">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Barny:: 찾아가는 Bar</title>
</head>
<script type="text/javascript">
	$(document).ready(function(){
		
		var searchForm = $("#searchForm");
		$("#searchForm button").on("click", function(e){
			if(!searchForm.find("option:selected").val()){
				alert("검색 종류를 선택하세요");
				return false;
			}
			if(!searchForm.find("input[name='keyword']").val()){
				alert("키워드를 입력하세요");
				return false;
			}
			searchForm.find("input[name='pageNum']").val("1");
			e.preventDefault();
	
			searchForm.submit();
	
		});
	});

	
</script>
<body>
	<div class="col-md-6">
	<table class="table table-sm">
		<tr>
			<td>공지사항 번호</td>
			<td>공지 제목</td>
			<td>게시 날짜</td>
		</tr>
		<c:forEach items="${list}" var="vo">
		<tr>
			<td>${vo.board_id}</td>
			<td>
				<a href="${pageContext.request.contextPath}/notice/content/${vo.board_id}">${vo.b_title}</a></td>
			<td>${vo.b_date}</td>
		</tr>
		</c:forEach>
	</table>
</div>


	<div class="col-lg-12">
		<form id='searchForm' action="/notice/main" method='get'>
			<select name='type'>
				<option value=""<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>--</option>
				<option value="T"<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목</option>
				<option value="C"<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내용</option>
			</select>
			<input type='text' name='keyword' value='<c:out value="${pageMaker.cri.keyword}"/>'/>
			<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>'/>
			<input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>'/>
			<button class='btn btn-default'>Search</button>
		</form>
	</div>


	<nav aria-label="Page navigation example">
		<ul class="pagination">
			<c:if test="${pageMaker.prev}">
				<li class="page-item">
					<a class="page-link" href="notice${pageMaker.makeQuery(pageMaker.startPage - 1) }" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
						<span class="sr-only">Previous</span>
					</a>
				</li>
			</c:if>
		
			<c:forEach var="idx" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
				<li class="page-item "><a class="page-link" href="notice${pageMaker.makeQuery(idx)}">
					${idx}
				</a>
				</li>
			</c:forEach>
			<!-- 페이지 메이커에 링크 걸어줌 -->
		
			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li class="page-item">
					<a class="page-link" aria-label="Next" href="notice${pageMaker.makeQuery(pageMaker.endPage +1) }">
						<span aria-hidden="true">&raquo;</span>
	        			<span class="sr-only">Next</span>
					</a>
				</li>
			</c:if>
		</ul>
	</nav>

</body>
</html>