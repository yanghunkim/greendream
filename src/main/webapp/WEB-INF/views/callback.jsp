<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Insert title here</title>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<script>

    var naverLogin = new naver.LoginWithNaverId({
        clientId: "kzaUf9S3rZNJ7Yc3CGVD", // 본인걸로 수정, 띄어쓰기 금지.
        callbackUrl: "http://localhost:8070/spring/home.do", // 아무거나 설정
        isPopup: false,
        callbackHandle: true
    });
    naverLogin.init();
 	
    window.addEventListener('load', function () {
    naverLogin.getLoginStatus(function (status) {
 
    if (status) {
        /* console.log(naverLogin.user); */
   
        var birthday = naverLogin.user.getBirthday();
        var email = naverLogin.user.getEmail();
        var gender = naverLogin.user.getGender();
        var id = naverLogin.user.getId();
        var name = naverLogin.user.getName();
        var mobile = naverLogin.user.getMobile();
        var nickName = naverLogin.user.getNickName();
        var birthyear = naverLogin.user.getBirthyear();

        console.log(birthday);
        console.log(email);
        console.log(gender);
        console.log(id);
        console.log(name);
        console.log(nickName);
        console.log(mobile);
        console.log(birthyear); 
	        $.ajax({
	            type: 'post',
	            url: 'naverSave',
	            data: {'n_id':id, 'n_mobile':mobile, 'n_birthday':birthday, 'n_email':email, 'n_gender':gender, 'n_name':name, 'n_nickName':nickName, 'n_birthyear':birthyear},
	            dataType: 'text',
	            success: function(result) {
	                if(result=="ok") {
	                	console.log('로그인')
	                    location.replace("http://localhost:8080/") 
	                } else if(result=="no") {
	                    console.log('회원가입')
	                    location.replace("http://localhost:8080/memberNaver")
	                }
	            },
	            error: function(result) {
	                console.log('오류 발생')
	            }
	        })
	 
	    } else {
	        console.log("callback 처리에 실패하였습니다.");
	    }
	    });
	});

</script>
</body>
</html>
