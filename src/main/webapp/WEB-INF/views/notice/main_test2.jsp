<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Barny:: 찾아가는 Bar</title>

    <!--font-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
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
        $('.a-delete').click(function (event) {
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
            var trObj = $(aObj).parent().parent();

            $.ajax({
                type: "DELETE",
                url: $(aObj).attr("href"),
                success: function (result) {
                    console.log(result);
                    if (result == "SUCCESS") {
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
<script type="text/javascript">
    $(document).ready(function () {

        var searchForm = $("#searchForm");
        $("#searchForm button").on("click", function (e) {
            if (!searchForm.find("option:selected").val()) {
                alert("검색 종류를 선택하세요");
                return false;
            }
            if (!searchForm.find("input[name='keyword']").val()) {
                alert("키워드를 입력하세요");
                return false;
            }
            searchForm.find("input[name='pageNum']").val("1");
            e.preventDefault();

            searchForm.submit();

        });
    });


</script>


<%--체크박스 삭제--%>
<script type="text/javascript">
    $(function(){
        var chkObj = document.getElementsByName("RowCheck");
        var rowCnt = chkObj.length;

        $("input[name='allCheck']").click(function(){
            var chk_listArr = $("input[name='RowCheck']");
            for (var i=0; i<chk_listArr.length; i++){
                chk_listArr[i].checked = this.checked;
            }
        });
        $("input[name='RowCheck']").click(function(){
            if($("input[name='RowCheck']:checked").length == rowCnt){
                $("input[name='allCheck']")[0].checked = true;
            }
            else{
                $("input[name='allCheck']")[0].checked = false;
            }
        });
    });

    function deleteValue(){
        var url = "/${contextPath}/admin/notice/delete_";
        var valueArr = new Array();
        var list = $("input[name='RowCheck']");
        for(var i = 0; i < list.length; i++){
            if(list[i].checked){ //선택되어 있으면 배열에 값을 저장함
                valueArr.push(list[i].value);
            }
        }
        if (valueArr.length == 0){
            alert("선택된 글이 없습니다.");
        }
        else{
            var chk = confirm("정말 삭제하시겠습니까?");
            $.ajax({
                url : url,
                type : 'POST',
                traditional : true,
                data : {
                    valueArr : valueArr
                },
                success: function(jdata){
                    if(jdata = 1) {
                        alert("삭제 성공");
                    }
                    else{
                        alert("삭제 실패");
                    }
                }
            });
        }
    }
</script>
</head>
<body>

<%--content--%>
<div class="content">
    <div class="custom-container">
        <div class="board_name" style="text-align: center">공지사항
        </div>
        <div>
            <label class="control control--checkbox mx-2">
                <input type="checkbox" id="allCheck" name="allCheck"/>
                <div class="control__indicator"></div>
            </label>
            <a class ="selection ml-4 pl-2">전체 선택 /</a>
            <input type="button" value ="선택 삭제 " class="selection" onclick="deleteValue();"/>
            <a class="btn-basic post mb-2" type="button" title="글쓰기" onclick="location.href='write_view'">글쓰기</a>
        </div>
        <div class="table-responsive outline pb-3">
            <table class="table custom-table">
                <thead style="border-bottom: solid 1px;">
                <tr>
					<th scope="col"> </th>
                    <th scope="col">번호</th>
                    <th scope="col">제목</th>
                    <th scope="col">작성자</th>
                    <th scope="col">작성일</th>
                    <th scope="col">조회</th>
                    <th scope="col">삭제</th>

                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="vo">
                    <tr style="font-weight: 400;">
						<th scope="row">
							<label class="control control--checkbox">
								<input type="checkbox" value = "${vo.board_id}" name ="RowCheck"/>
								<div class="control__indicator"></div>
							</label>
						</th>
                        <td>${vo.board_id}</td>
                        <td style="text-align: left; padding-left: 2rem">
                            <a class="board_title"
                               href="${pageContext.request.contextPath}/admin/notice/content/${vo.board_id}">${vo.b_title}</a>
                        </td>
                        <td>Barny</td>
                        <td>${vo.b_date}</td>
                        <td>${vo.b_hit}</td>
                        <td><a class="a-delete" data-board_id='${vo.board_id}'
                               href="${pageContext.request.contextPath}/admin/notice/content/${vo.board_id}">삭제</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>


        <!--Pagination-->
        <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
                <c:if test="${pageMaker.prev}">
                    <li class="page-item">
                        <a class="page-link" href="notice${pageMaker.makeQuery(pageMaker.startPage - 1) }"
                           aria-label="Previous">
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
                <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                    <li class="page-item">
                        <a class="page-link" aria-label="Next"
                           href="notice${pageMaker.makeQuery(pageMaker.endPage +1) }">
                            <span aria-hidden="true">&raquo;</span>
                            <span class="sr-only">Next</span>
                        </a>
                    </li>
                </c:if>
            </ul>
        </nav>



        <%--searching button--%>
        <div class="table-responsive outline pt-4">
            <form class="d-flex mb-3" id="searchForm" action="/notice" method='get' style="float: right;">
                <select name='type' class="searching_option">
                    <option value=""<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>--</option>
                    <option value="T"<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목</option>
                    <option value="C"<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내용</option>
                </select>
                <input class="form-control_2 me-2" type='text' name='keyword'
                       value='<c:out value="${pageMaker.cri.keyword}"/>'/>
                <input class="form-control_2 me-2" type='hidden' name='pageNum'
                       value='<c:out value="${pageMaker.cri.pageNum}"/>'/>
                <input class="form-control_2 me-2" type='hidden' name='amount'
                       value='<c:out value="${pageMaker.cri.amount}"/>'/>
                <button class="searching_btn btn-outline-search" type="submit">검색</button>
            </form>
        </div>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="/static/table/js/main.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Core theme JS-->
<script src="/static/main_page/js/scripts.js"></script>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

</body>
</html>