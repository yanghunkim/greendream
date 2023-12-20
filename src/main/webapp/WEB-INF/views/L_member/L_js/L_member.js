//함수 calc()선언,구현
function calc() {
  let currentYear = new Date().getFullYear(); //올해 년도를 저장을 변수 currentYear에 저장함.
  
  //사용자로부터 입력을 받은 값으로 변수 birthYear에 저장함.(YYYY를 띄워줌)
  let birthYear = prompt("태어난 년도를 입력하세요.", "YYYY");
  
  //변수 age를 0으로 초기화
  let age = 0;
  
  //실제 나이를 구하기 위한 코드 (재할당)
  age = currentYear - birthYear + 1;
  
  //document는 현재 웹브라우저의 페이지를 의미하고, 
  //querySelector()는 id가 result인 웹 요소(div)를 의미한다.
  //innerHTML은 대입한 값으로 html문서에 대체하시오.
  document.querySelector("#result").innerHTML =
    "당신의 나이는" + age + "세입니다.";
}

/*let id = document.getElementById("id");

let pw = document.getElementsByName("pw");

let pwc = document.getElementById("pwc");

let name = document.getElementById("name");



let regId = /^[A-Za-z0-9]{6,12}$/;

let regName = /^[가-힣]{2,100}$/;

let regPw = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;

// 연락처와 관련되어 있는 정규식
let regPhone= /^010[0-9]{4}[0-9]{4}$/;
// 이메일과 관련되어 있는 정규식
let regEmail= /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;


//submit 함수

function formValid(){
	if(id==null){
		alret("아이디를 입력하쇼요")
		return false;
	}
	if(id.test(regId)){
		return true;
	}
}*/
