<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>my_review list</title>
</head>

<body>

<h2>review_list</h2>

	<table>

		<colgroup>

			<col style="width:5%;" />

			<col style="width:auto;" />

			<col style="width:15%;" />

			<col style="width:10%;" />

			<col style="width:10%;" />

		</colgroup>

		<thead>

			<tr>
      			<table width="500" cellpadding="0" cellspacing="0" border="1">
			
				<th>글번호<sec:authentication property="principal.boardVO.board_id"/></th>

				<th>제목<sec:authentication property="principal.boardVO.b_title"/></th>

				<th>날짜<sec:authentication property="principal.boardVO.b_date"/></th>
				<th>상품<sec:authentication property="principal.boardVO.product_name"/></th>
				<th>좋아요<sec:authentication property="principal.boardVO.like_count"/></th>

			</tr>

		</thead>

		<tbody>

			<c:choose>

				<c:when test="${empty my_review}" >

					<tr><td colspan="5" align="center">작성한 후기가 없습니다</td></tr>

				</c:when> 

				<c:when test="${!empty my_review}">


				<c:forEach var="reviewList" items="${my_review}">


						<tr>
							
							<td><c:out value="${reviewList.board_id}"/></td>
							<td><a href="review_content_view?board_id=${reviewList.board_id}">${reviewList.b_title}</a></td>
							<td><c:out value="${reviewList.b_date}"/></td>
							<td><a href="${pageContext.request.contextPath}/product_view?product_name=${reviewList.product_name}">${reviewList.product_name}</a></td>
							<td><c:out value="${reviewList.like_count}"/></td>

						</tr>

					</c:forEach>

				</c:when>

			</c:choose>
			

		</tbody>

	</table>
         <td colspan="5"> <a href="/board/my_review_write">글작성</a> </td>
      </tr>
			

</body>

</html>



