$("#mail-Ceck-Btn").click(function(){
	const email = $("#userEmail01").val() + $("#userEmail02").val();
	console.log("완성된 이메일 : " + email);; // 확인용
	const checkInput = $(".mail-check-input") // 입력받 는 곳
	
	$.ajax({
		type : 'get',
		url : '<c:url value="/user/mailCheck?emai"/>'+email, //
		success : function (data) {
			console.log("date : " + data);
			checkInput.attr('disabled',false);
			code = data;
			alert('인증번호가 전송되었습니다.')
		}
	})
});