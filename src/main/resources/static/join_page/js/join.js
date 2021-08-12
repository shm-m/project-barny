$(function() {
	var isCertification = false;
	var key = "";
	$("#sendMail").click(function () {// 메일 입력 유효성 검사
		var email = $("#email").val(); // 사용자의 이메일 입력값.

		if (email == "") {
			alert("메일 주소가 입력되지 않았습니다.");
		} else {
			// email = email + "@" + $(".domain").val(); // 셀렉트 박스에 @뒤 값들을 더함.
			$.ajax({
				type: 'post',
				url: '/CheckMail',
				dataType: 'json',
				async: "false",
				data: {
					email: email
				},
				success: function (data) {
					console.log(data.key);
					key = data;
				}
			});
			alert("이메일을 확인하시기 바랍니다.");
			$(".compare").css("display", "block");
			$(".compare-text").css("display", "block");
		}
	});



	$(".compare").on("propertychange change keyup paste input", function() {
		if ($(".compare").val() == key) {
			$(".compare-text").text("인증 성공!").css("color", "black");
			isCertification = true;
		} else {
			$(".compare-text").text("불일치!").css("color", "red");
			isCertification = false;
		}
	});


	$("#submit-btn").click(function(){
		if(isCertification==false){ //인증이 완료되지 않았다면
			alert("메일 인증이 완료되지 않았습니다.");
		}
	});


});





