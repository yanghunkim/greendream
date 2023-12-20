<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberMain</title>
<script type="text/javascript" src="../../../resources/js/member.js"></script>
<!-- <script type="text/javascript" src="L_js/L_member.js"></script> -->
<link rel="stylesheet" href="../../../resources/css/member.css">
</head>
<body>
<form action="../home.jsp" onsubmit="return formValid()">
	<table id="t1">
		<tr>
			<td>*아이디</td> 
			<td><input type="text" name="id" id="id" onblur="validId()" ></td>
		</tr>
		<tr>
			<td>*비밀번호</td> 
			<td><input type="password" name="pw" id="pw" onblur="validPw()"></td>
		</tr>
		<tr>
			<td>*비밀번호 확인</td> 
			<td><input type="password" name="pwc" id="pwc"  onblur="validPwc()"></td>
		</tr>
		<tr>
			<td>*이름</td> 
			<td><input type="text" name="name" id="name" onblur="validName()"></td>
		</tr>
		<tr>
			<td>*이메일</td> 
			<td>이메일 내용</td>
		</tr>
		<tr>
			<td>*주소</td> 
			<td> <input type="text" name="address" id="address" > 주소찾기<br>
			<input type="text" name="addressd" id="addressd" ></td>
		</tr>
		<tr>
			<td>*휴대전화</td> 
		
			<td><input type="number"  name="pn1" id="pn1" > - <input type="number"  name="pn2" id="pn2" >
			- <input type="number"  name="pn3" id="pn3" ></td>
			
		</tr>
		<tr>
			<td>보호자연락처(선택)</td> 
			
			<td><input type="number"  name="ppn1" id="ppn1" > -
			<input type="number"  name="ppn2" id="ppn2" > -
			<input type="number"  name="ppn3" id="ppn3" ></td>
			 
		</tr>
		<tr>
			<td>*생년월일</td> 
			
			<td><input type="number"  name="bd1" id="bd1" > -
			<input type="number"  name="bd2" id="bd2" > -
			<input type="number"  name="bd3" id="bd3" ></td>
		</tr>
		<tr>
			<td>*국적</td> 
			<td><input type="text" name="na" id="na" ></td>
		</tr>
		<tr>
			<td>*성별</td> 
			<td>
				<input type="radio" name="gender" value='male' >남성
				<input type="radio" name="gender" value='female' >여성
			</td>
		</tr>
		<tr>
			<td>*자동가입 방지</td>
			<td>문자 <input type="text" name="id" id="id" >
				자동가입을 방지하기 위해 보안절차를 거치고 있습니다. <br>  왼쪽 이미지를 보이는 대로 입력해주세요. <br>
				<input type="text" name="ot" id="ot">	
			</td>
		</tr>
	
	
	</table>
	<input type="submit" value="제출" id="confirm">
</form>

    <!-- 버튼을 클릭하면 calc()함수가 호출된다. -->
    <button class="btn" onclick="calc()">나이 계산</button>
    <div id="result" class="show">(결과값 표시)</div>
    


</body>
</html>