<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table id="list-table" width="500" cellpadding="0" cellspacing="0" border="1">
		<form id="updateForm" action="${pageContext.request.contextPath}/admin/event/content/${content_view.board_id}" method="post">
			<input type="hidden" id="board_id" value="${content_view.board_id}">
			<tr>
				<td> 번호 </td>
				<td> ${content_view.board_id} </td>
			</tr>
            <tr>
				<td> 작성 일자 </td>
				<td> ${content_view.b_date} </td>
			</tr>
			<tr>
				<td> 제목 </td>
				<td> <input type="text" id="b_title" value="${content_view.b_title}"></td>
			</tr>
			<tr>
				<td> 내용 </td>
				<td> <textarea rows="10" id="b_content" name="content" >${content_view.b_content}</textarea></td>
			</tr>
			<tr >
				<td colspan="2"><a href="${pageContext.request.contextPath}/admin/event">목록보기</a></td>
			</tr>
		</form>
	</table>
	
</body>
</html>