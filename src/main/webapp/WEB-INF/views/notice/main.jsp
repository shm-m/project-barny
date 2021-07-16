<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Barny:: 찾아가는 Bar</title>
</head>
<body>
	
	<table width="500" cellpadding="0" cellspacing="0" border="1">
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