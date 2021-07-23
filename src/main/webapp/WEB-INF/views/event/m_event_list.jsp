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

<!--css-->
<link rel="stylesheet" href="/static/css/5.0bootstrap.min.css">
<link rel="stylesheet" href="/static/css/styles.css">
<link href="/static/main_page/css/styles.css" rel="stylesheet"/>

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
	<!--now event Grid-->
<section class="page-section bg-light">
	<div class="container">
		<div class="text-center">
			<div class="text-center" style="margin-bottom: 5rem;">
				<h4 class="section-heading text-uppercase">현재 진행중인 이벤트</h4>
			</div>
		</div>
  
		<div class="card-group col d-flex justify-content-center" style="margin-left: 15px;">
			<div class="card">
				<a href="..">
			  <img src="/static/img/event1.png" class="card-img-top"></a>
			  <div class="card-body">
				<h5 class="card-title">[상시 이벤트] 바니를 찾아라!</h5>
				<p class="card-text">숨어있는 바니의 짝을 맞추면 1000포인트를 드려요!</p>
			  </div>
			  <div class="card-footer">
				<small class="text-muted">2021-07-23 ~ 상시 진행중</small>
			  </div>
			</div>
			<div class="card">
				<a href="..">
			  <img src="/static/img/event2.png" class="card-img-top" alt="..."></a>
			  <div class="card-body">
				<h5 class="card-title">[상시 이벤트] 7월의 출석 체크룰렛!</h5>
				<p class="card-text">매일 룰렛을 돌려 다양한 포인트를 받아가세요</p>
			  </div>
			  <div class="card-footer">
				<small class="text-muted">2021-07-23 ~ 상시 진행중</small>
			  </div>
			</div>
			<div class="card">
				<a href="...">
			  <img src="/static/img/event3.png" class="card-img-top" alt="..."></a>
			  <div class="card-body">
				<h5 class="card-title">[상시 이벤트] 쿠키를 까면 포인트가 펑!</h5>
				<p class="card-text">오늘의 운세를 알아보고 포인트를 받아가자!</p>
			  </div>
			  <div class="card-footer">
				<small class="text-muted">2021-07-23 ~ 상시 진행중</small>
			  </div>
			</div>
		  </div>
		
	</div>
  </section>
<!-- 
  <section class="page-section bg-white">
	<div class="container">
		<div class="text-center">
			<div class="text-center" style="margin-bottom: 5rem;">
				<h4 class="section-heading text-uppercase">이벤트 게시판</h4>
			</div>
		</div>
		
	<div class="col-md-6">
		<table class="table table-sm">
			<tr>
				<td>이벤트 번호</td>
				<td>이벤트 제목</td>
				<td>게시 날짜</td>
			</tr>
			<c:forEach items="${event_list}" var="vo">
				<tr>
					<td>${vo.board_id}</td>
					<td>
						<a href="${pageContext.request.contextPath}/event/content/${vo.board_id}">${vo.b_title}</a>
					</td>
					<td>${vo.b_date}</td>
				</tr>
			</c:forEach>
		</table>
	</div>


	<div class="col-lg-12">
		<form id='searchForm' action="/event" method='get'>
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
					<a class="page-link" href="event${pageMaker.makeQuery(pageMaker.startPage - 1) }" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
						<span class="sr-only">Previous</span>
					</a>
				</li>
			</c:if>
		
			<c:forEach var="idx" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
				<li class="page-item "><a class="page-link" href="event${pageMaker.makeQuery(idx)}">
					${idx}
				</a>
				</li>
			</c:forEach>
			<!-- 페이지 메이커에 링크 걸어줌 -->
		
			<!-- <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li class="page-item">
					<a class="page-link" aria-label="Next" href="event${pageMaker.makeQuery(pageMaker.endPage +1) }">
						<span aria-hidden="true">&raquo;</span>
	        			<span class="sr-only">Next</span>
					</a>
				</li>
			</c:if>
		</ul>
	</nav>

		
</div>
</section> -->

<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>