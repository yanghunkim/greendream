<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id" content="540186143401-9g2nqa98hs2ds8soh8ccqa04hn9najjm.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>
<title>Insert title here</title>
</head>
<body>

 <form id="acform" action="https://oauth2.googleapis.com/token" method="post"
          enctype="application/x-www-form-urlencoded">
        <input type="hidden" name="code" value="{{code}}">
        <input type="hidden" name="client_id" value="623144461116-btkfbaaccvpveju1flad3oo89ec88l6h.apps.googleusercontent.com">
        <input type="hidden" name="client_secret" value="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">
        <input type="hidden" name="redirect_uri" value="http://localhost:8080/google-callback">
        <input type="hidden" name="grant_type" value="authorization_code">
</form>


    <script type="text/javascript">
        this.document.getElementById("acform").submit();
        console.log(grant_type)
	</script>

</body>
</html>