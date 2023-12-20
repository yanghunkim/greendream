
// 입력 번호
let phone = document.getElementById("phone");
console.log(phone)
// 번호 정규식
let regPhone = /^[0-9]{4,11}$/   ;

//다음 버튼
const next = document.getElementById('next');

//입력 아이디

function validPhone(){
	if(regPhone.test(phone.value)){
		//alert("제대로 입력함")
		document.getElementById("lbPhone").innerHTML="휴대폰번호 기입 완료";
		document.getElementById("lbPhone").style.color="green";
		next.disabled = false;
		return true;
	}else{
		//alert("제대로 입력안함")
		document.getElementById("lbPhone").innerHTML="휴대폰번호를 다시 확인해 주세요";
		document.getElementById("lbPhone").style.color="red";
		next.disabled = true;
		return false;
	}
}


		

