<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>

</head>
<body>
<script type="text/javascript">
function doGoogleLogin() {
	const url='https://accounts.google.com/o/oauth2/v2/auth?client_id=' +
				'623144461116-btkfbaaccvpveju1flad3oo89ec88l6h.apps.googleusercontent.com' +
				'&redirect_uri=' + 'http://localhost:8080/google-callback' +
				'&response_type=code' +
				'&scope=email profile';
	
	document.location.href = url;
	}



  function onSignIn(googleUser) {
    // Useful data for your client-side scripts:
    var profile = googleUser.getBasicProfile();
    console.log("ID: " + profile.getId()); // Don't send this directly to your server!
    console.log('Full Name: ' + profile.getName());
    console.log('Given Name: ' + profile.getGivenName());
    console.log('Family Name: ' + profile.getFamilyName());
    console.log("Image URL: " + profile.getImageUrl());
    console.log("Email: " + profile.getEmail());

    // The ID token you need to pass to your backend:
    var id_token = googleUser.getAuthResponse().id_token;
    console.log("ID Token: " + id_token);
    console.log("access_token: " + googleUser.getAuthResponse().access_token);
 
  };
</script>
<div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark">
<button onclick="doGoogleLogin()">구글 로그인</button>

<a href="googoo">구글</a>
<a href="https://accounts.google.com/o/oauth2/v2/auth?
scope=https://www.googleapis.com/auth/cloud-identity.devices.lookup&
access_type=offline&
include_granted_scopes=true&
state=state_parameter_passthrough_value&
redirect_uri=http://localhost:8080/google-callback&
response_type=code&
client_id=623144461116-btkfbaaccvpveju1flad3oo89ec88l6h.apps.googleusercontent.com">google</a>

</div>

</body>
</html>