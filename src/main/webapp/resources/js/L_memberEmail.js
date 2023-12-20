
//다음 버튼
const next = document.getElementById('next');
console.log(next);

$(document).ready(function() { 
 	
 	var email_auth_cd = '';
 
	$('#check').click(function(){
		
		
		if($('#email_auth_key').val() != email_auth_cd){
			message = "인증번호가 일치하지 않습니다.";
    		$("#lbEmail").html(message).css("color", "green");
            $("#email").trigger("focus");
            next.disabled = true;
			return false;
		}else{
			message = "사용가능한 이메일 입니다."
			$("#lbEmail").html(message).css("color", "green");
	        $("#next").trigger("focus");
	        next.disabled = false;
		}
		
	});
	
	$(".email_auth_btn").click(function(){	     	 
    	 var email = $('#email').val();
    	 
    	 if(email == ''){
    	 	alert("이메일을 입력해주세요.");
    	 	return false;
    	 }
    	 
    	 $.ajax({
			type : "POST",
			url : "/emailAuth",
			data : {email : email},
			success: function(data){
				alert("인증번호가 발송되었습니다.");
				email_auth_cd = data;
			},
			error: function(data){
				alert("메일 발송에 실패했습니다.");
			}
		}); 
	});

 });




