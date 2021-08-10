<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
</head>
<!--<script type="text/javascript">
	$(document).ready(function() {
		$('.cart').click(function(event) {
			event.proventDefault(); // 페이지 이동을 막아준다.
			console.log("ajax 호출전");
			
			var cObj = this;
			func_confirm(cObj);
		});
	});
</script>
 <script type="text/javascript">
	function func_confirm(cObj) {
		if(confirm("장바구니에 담겼습니다!")) {
			
			var trObj = $(cObj).parent().parent();
			
			$.ajax({
				type : "insert",
				url : $(cObj).attr("href"),
				success : function (result) {
					console.log(result);
					if(result == "SUCCESS") {
						$(trObj).add();
						alert("장바구니로 이동하시겠습니까?")
					}
				}
			})
		}
	}
</script> -->
<script type="text/javascript">
	$(document).ready(function() {
		
		$('.cart').click(function(event) {
			
			event.proventDefault(); // 페이지 이동을 막아준다.
			
			var  = this;
			func_confirm(cObj);
		});
	});
	
	$.ajax({
		type : "post",
		url : $(cObj).attr("cartList"),
		success : function(result) {
			console.log(result);
			if(result == "SUCCESS") {
				$(trObj).add();
				alert("장바구니에 담겼습니다!")
			}
		},
		error : function(e) {
			console.log(error);
		}
	})
</script>

<body>

</body>
</html>