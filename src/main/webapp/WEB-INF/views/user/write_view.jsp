<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="UTF-8">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!--font-->
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">


    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="/static/main_page/assets/favicon-2.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>

    <!-- Core theme CSS (includes Bootstrap)-->
    <link rel="stylesheet" href="/static/table/css/style.css" />
    <link href="/static/main_page/css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="/static/css/styles.css">
    <link rel="stylesheet" href="/static/table/css/owl.carousel.min.css" />

    <style>
        h1 {
            text-align: center;
        }
    </style>

    <title>Find your own drink, Barny</title>
</head>

<body>
    <!-- <div></div> -->

    <div class="container">
        <div class="custom-container2 col-sm-10">
            <h1 class="board_name">상품 후기 등록</h1>
            <div class="table-responsive outline pt-3">
                <form action="/review/write" method="post" onsubmit="return confirm('게시글을 등록하시겠습니까?')" role="form"
                    enctype="multipart/form-data">
                    <table class="table" style="font-size: 13px; border-top : solid 1px; border-top-color: #dee2e6;">
                        <input type="hidden" name="product_id" value="${product_view.product_id}">
                        <input type="hidden" name="member_idx" value="${member_idx}">
                        <div class="form-group">
                            <label for="title" style="font-weight: bold;">후기 제목</label>
                            <input type="text" class="form-control_2" name="b_title" placeholder="제목을 입력하세요">
                        </div>
                        <div class="form-group">
                            <label for="author" style="font-weight: bold;"> 후기 내용 </label>
                            <input type="text" class="form-control_2" style="padding-top: 1rem; padding-bottom: 15rem;"
                                name="b_content" placeholder="내용을 입력하세요">
                        </div>
                        <div class="form-group">
                            <label for="inputFile" class="col-form-label">첨부 파일</label>
                            <div class="custom-file" id="inputFile">
                                <input name="file" type="file" class="custom-file-input" id="customFile"
                                    accept="image/png, image/jpeg" multiple>
                                <label class="custom-file-label" for="customFile">파일을 선택해 주세요.</label>
                            </div>

                        </div>
                    </table>
                    <div class="py-3" style="text-align: right;">
                        <a href="/product_view?product_id=${product_view.product_id}" role="button"
                            class="btn-basic text-uppercase">취소</a>
                        <input type="submit" class="btn-basic text-uppercase" value="등록"></input>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script>
        $("input[type='file']").on("change", function (e) {
            var fileName = "";

            var formData = new FormData();
            var inputFile = $("input[name='file']");
            var files = inputFile[0].files;

            for (var i = 0; i < files.length; i++) {
                formData.append("file", files[i]);
                fileName = fileName + " " + files[i].name; // + $(this).val().split("\\").pop(); 
            }

            //fileName =fileName + ";" + $(this).val().split("\\").pop();
            $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
        });
    </script>

</body>

</html>