<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE>
<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>공지사항</title>
	<!--font-->
	<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">

	<!-- Bootstrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
		  integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

	<!-- Favicon-->
	<link rel="icon" type="image/x-icon" href="/static/main_page/assets/favicon-2.ico"/>
	<!-- Font Awesome icons (free version)-->
	<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>

	<!-- Core theme CSS (includes Bootstrap)-->
	<link rel="stylesheet" href="/static/table/css/style.css"/>
	<link href="/static/main_page/css/styles.css" rel="stylesheet"/>
	<link rel="stylesheet" href="/static/css/styles.css">
	<link rel="stylesheet" href="/static/table/css/owl.carousel.min.css"/>

	<script type="text/javascript">
		$(document).ready(function () {

			$("#updateForm").submit(function (event) {

				event.preventDefault(); //실행했을때 나머지 이벤은 내가 컨트롤 하겠다

				var b_title = $("#b_title").val();
				var b_content = $("#b_content").val();
				console.log(b_content);
				console.log($(this).attr("action"));

				var form = {
					b_title: b_title,
					b_content: b_content,
					board_id: $("#board_id").val()
				};

				//dataType: 'json',
				$.ajax({
					type: "PUT",
					url: $(this).attr("action"),
					cache: false,
					contentType: 'application/json; charset=utf-8',
					data: JSON.stringify(form),
					success: function (result) {
						if (result == "SUCCESS") {
							//list로
							// 똑같은거 밑에꺼가 제이슨 windows.location.href= '${pageContext.request.contextPath}/restful/board/'
							$(location).attr('href', '${pageContext.request.contextPath}/admin/notice/main')
						}
					},
					error: function (e) {
						console.log(e);
					}
				})

			}); // end submit()

		}); // end ready()
	</script>
</head>
<body>
<div class="container">
	<div class="custom-container2">
		<div class="board_name" style="text-align: center">공지사항  <br>
		</div>
		<div class="table-responsive outline pt-3">
			<table class="table" style="font-size: 13px; border-top : solid 1px; border-top-color: #dee2e6;">
				<form id="updateForm" action="${pageContext.request.contextPath}/admin/notice/content/${content_view.board_id}" method="post">
					<input type="hidden" id="board_id" value="${content_view.board_id}">
					<tr>
						<td class="content_head"> 제목</td>
						<td colspan="3"><input type="text" class = "textarea-custom py-1" id="b_title" value="${content_view.b_title}"></td>
					</tr>
					<tr>
						<td class="content_head"> 번호</td>
						<td style="width:70px; border-right : solid 1px; border-right-color: #dee2e6;"> ${content_view.board_id} </td>
						<td class="content_head"> 작성 일자</td>
						<td> ${content_view.b_date} </td>
					</tr>
					<tr>
						<td class="content_head"> 내용</td>
						<td colspan="4"><textarea class ="textarea-custom"rows="10" id="b_content" name="content"
												  style="padding-top: 1rem; padding-bottom: 10rem; width: 100%;">${content_view.b_content}</textarea>
						</td>
					</tr>
					<tr>

						<td colspan="4" class="py-3" style="text-align: right">
							<input type="submit" class="btn-basic text-uppercase" style ="padding-top: 5px; padding-bottom: 5px;" value="수정">
							<a class="btn-basic text-uppercase" href="${pageContext.request.contextPath}/admin/notice/main">목록보기</a>
						</td>
					</tr>
				</form>
			</table>
		</div>
		<div class="table-responsive outline pb-3"/>
	</div>
</div>
</body>
</html>