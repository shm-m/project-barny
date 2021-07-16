<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(document).ready(function(){
	    
		$("#updateForm").submit(function(event){
			
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
			    type : "PUT",
			    url : $(this).attr("action"),
			    cache : false,
			    contentType:'application/json; charset=utf-8',
 			    data: JSON.stringify(form), 
			    success: function (result) {       
					if(result == "SUCCESS"){
						//list로 
						// 똑같은거 밑에꺼가 제이슨 windows.location.href= '${pageContext.request.contextPath}/restful/board/'
						$(location).attr('href', '${pageContext.request.contextPath}/notice/main/')				      	       
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
	<table id="list-table" width="500" cellpadding="0" cellspacing="0" border="1">
		<form id="updateForm" action="${pageContext.request.contextPath}/notice/content/${content_view.board_id}" method="post">
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
				<td colspan="2"> <input type="submit" value="수정"> &nbsp;&nbsp; <a href="${pageContext.request.contextPath}/notice/main/">목록보기</a> &nbsp;&nbsp; <a id="a-delete">삭제</a></td>
			</tr>
		</form>
	</table>
	
</body>
</html>