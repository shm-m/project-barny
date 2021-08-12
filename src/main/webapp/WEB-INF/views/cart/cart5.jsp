<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html lang="en">
<head>
<title>Cart</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="/static/cart/css/style.css">

<!--JQuery-->
<script src="http://code.jquery.com/jquery-1.6.4.min.js"></script>

<script type="text/javascript">
	$(function() {
		var chkObj = document.getElementsByName("RowCheck");
		var rowCnt = chkObj.length;

		$("input[name='allCheck']").click(function() {
			var chk_listArr = $("input[name='RowCheck']");
			for (var i = 0; i < chk_listArr.length; i++) {
				chk_listArr[i].checked = this.checked;
			}
		});
		$("input[name='RowCheck']").click(function() {
			if ($("input[name='RowCheck']:checked").length == rowCnt) {
				$("input[name='allCheck']")[0].checked = true;
			} else {
				$("input[name='allCheck']")[0].checked = false;
			}
		});
	});

	function deleteValue() {
		var url = "${pageContext.request.contextPath}/admin/notice/delete_";
		var valueArr = new Array();
		var list = $("input[name='RowCheck']");
		for (var i = 0; i < list.length; i++) {
			if (list[i].checked) { //선택되어 있으면 배열에 값을 저장함
				valueArr.push(list[i].value);
			}
		}
		if (valueArr.length == 0) {
			alert("선택된 글이 없습니다.");
		} else {
			if (confirm("해당 글을 삭제하시겠습니까? \n(삭제한 글은 복구가 불가능합니다.)")) {
				// var chk = confirm("정말 삭제하시겠습니까?");
				$.ajax({
					url : url,
					type : 'POST',
					traditional : true,
					data : {
						valueArr : valueArr
					},
					success : function(jdata) {
						if (jdata = 1) {
							alert("삭제되었습니다.");
							location.replace("main");
						} else {
							alert("삭제가 실패하였습니다.");
						}
					}
				});
			} else {
				alert("작업이 취소되었습니다.");
			}
		}
	}
</script>
</head>

<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-4">
					<h2 class="heading-section">장바구니</h2>
				</div>
			</div>

			<div>
				<label class="control control--checkbox mx-2"> <input
					type="checkbox" id="allCheck" name="allCheck" />
					<div class="control__indicator"></div>
				</label> <a class="selection" style="margin-left: 2.4rem;">전체 선택 /</a> <input
					type="button" value="선택 삭제 " class="selection"
					onclick="deleteValue();" />
			</div>

			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
						<table class="table">
							<thead class="thead-primary">
								<tr>
									<th>&nbsp;</th>
									<th>&nbsp;</th>
									<th>Product</th>
									<th>Price</th>
									<th>Qty</th>
									<th>&nbsp;</th>
								</tr>
							</thead>
							<tbody>
								<tr class="alert" role="alert">
									<th scope="row"><label class="control control--checkbox">
											<input type="checkbox" value="${vo.board_id}" name="RowCheck" />
											<div class="control__indicator"></div>
									</label></th>
									<td>
										<div class="img"
											style="background-image: url(images/product-1.png);"></div>
									</td>

									<c:forEach items="${cartList}" var="dto">
										<td>
											<div class="email">
												<span>상품이름 </span>
											</div>
										</td>
										<td>가격</td>
										<td class="quantity">
											<div class="input-group">
												<input type="text" name="quantity"
													class="quantity form-control input-number" value="2"
													min="1" max="100">
											</div>
											<button id="btnUpdate">수정</button>
										</td>
									</c:forEach>
								<tr>
									<td colspan="5" align="right">장바구니 금액 합계 : <fmt:formatNumber
											value="${map.sumMoney}" pattern="#,###,###" />원 <br>
										배송료 : ${map.fee} 원<br> 총합계 : <fmt:formatNumber
											value="${map.sum}" pattern="#,###,###" />원
									</td>
								</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="/static/cart/js/jquery.min.js"></script>
	<script src="/static/cart/js/popper.js"></script>
	<script src="/static/cart/js/bootstrap.min.js"></script>
	<script src="/static/cart/js/main.js"></script>

</body>

</html>