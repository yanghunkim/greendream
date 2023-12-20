let pw = document.getElementById("pw");
let checkPw = document.getElementById("checkPw");
let checkPwLbl = document.getElementById("checkPwLbl");
let openPw = document.getElementById("openPw");

	function formClick(){
		if(pw.value.length==0 || checkPw.value.length==0){
			checkPwLbl.innerHTML = "비밀번호가 일치하지 않습니다.";
			document.getElementById("checkPwLbl").style.color="red";
			checkPw.focus();
			return false;
		}
		if(pw != checkPw){
			checkPwLbl.innerHTML = "비밀번호가 일치하지 않습니다.";
			document.getElementById("checkPwLbl").style.color="red";
			checkPw.focus();
			return false;
		} else{
			
		}
}
	
	// 비밀번호 표시
	function visiblePw(){
		if(openPw.checked == true){
			pw.setAttribute('type','text');
		}else{
			pw.setAttribute('type','password');
		}
	}
	
	

	//다음 버튼
	const next = document.getElementById('next');
	console.log(next);

	$(document).ready(function() { 
	 	
	 	var email_auth_cd = '';
	 
		$('#okay').click(function(){
			
			
			if($('#check').val() != email_auth_cd){
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
		
		$("#emailSend").click(function(){	     	 
	    	 var email = $('#email').val();
	    	 
	    	 if(email == ''){
	    	 	alert("이메일을 입력해주세요.");
	    	 	return false;
	    	 }
	    	 
	    	 $.ajax({
				type : "POST",
				url : "/emailChecking",
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




