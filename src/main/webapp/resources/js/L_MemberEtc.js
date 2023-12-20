// 입력 이름
let name = document.getElementById("name");
console.log(name)
// 이름 정규식
let regName = /^.{1,20}$/   ;



//입력 이름

function validName(){
	if(regName.test(name.value)){
		//alert("제대로 입력함")
		document.getElementById("lbName").innerHTML="이름 확인";
		document.getElementById("lbName").style.color="green";
		
		return true;
	}else{
		//alert("제대로 입력안함")
		document.getElementById("lbName").innerHTML="이름을 입력해주세요";
		document.getElementById("lbName").style.color="red";
		/*next.disabled = true;*/
		return false;
	}
}
//다음 버튼


// 생년 월일 

//'출생 연도' 셀렉트 박스 option 목록 동적 생성
const birthYearEl = document.querySelector('#birth-year')
// option 목록 생성 여부 확인
isYearOptionExisted = false;
birthYearEl.addEventListener('focus', function () {
  // year 목록 생성되지 않았을 때 (최초 클릭 시)
  if(!isYearOptionExisted) {
    isYearOptionExisted = true
    for(var i = 1940; i <= 2023; i++) {
      // option element 생성
      const YearOption = document.createElement('option')
      YearOption.setAttribute('value', i)
      YearOption.innerText = i
      // birthYearEl의 자식 요소로 추가
      this.appendChild(YearOption);
    }
  }
});

// 월
const birthMonthEl = document.querySelector('#birth-month')
//option 목록 생성 여부 확인
isMonthOptionExisted = false;
birthMonthEl.addEventListener('focus', function () {
// year 목록 생성되지 않았을 때 (최초 클릭 시)
if(!isMonthOptionExisted) {
	isMonthOptionExisted = true
 for(var i = 1; i <= 12; i++) {
   // option element 생성
   const MonthOption = document.createElement('option')
   MonthOption.setAttribute('value', i)
   MonthOption.innerText = i
   // birthYearEl의 자식 요소로 추가
   this.appendChild(MonthOption);
 }
}
});

//일
const birthDayEl = document.querySelector('#birth-day')
//option 목록 생성 여부 확인
isDayOptionExisted = false;
birthDayEl.addEventListener('focus', function () {
//year 목록 생성되지 않았을 때 (최초 클릭 시)
if(!isDayOptionExisted) {
	isDayOptionExisted = true
for(var i = 1; i <= 31; i++) {
 // option element 생성
 const DayOption = document.createElement('option')
 DayOption.setAttribute('value', i)
 DayOption.innerText = i
 // birthYearEl의 자식 요소로 추가
 this.appendChild(DayOption);
}
}
});



//성별
let gender = document.getElementsByName("gender");

function etc(){
	let isChecked = false;
	for(let i = 0 ; i<gender.length; i++){
		if(gender[i].checked){
			document.getElementById("lbGender").innerHTML="재대로 입력함.";
			document.getElementById("lbGender").style.color="green";
			isChecked = true;
			break;
			
		}else{
			document.getElementById("lbGender").innerHTML="남성/여성 중 하나를 선택하세요.";
			document.getElementById("lbGender").style.color="red";
			isChecked = false;
			
			/*return false;*/
		}
	}//for 문 끝
	let yv=birthYearEl.value;
	let mv=birthMonthEl.value;
	let dv=birthDayEl.value;
	if(yv!="출생 연도"&&mv!="월"&&dv!="일"){
		document.getElementById("lbBir").innerHTML="재대로 입력함.";
		document.getElementById("lbBir").style.color="green";
	}else{
		document.getElementById("lbBir").innerHTML="생년월일을 선택하세요.";
		document.getElementById("lbBir").style.color="red";
	}
	
	//다음 보이게하기
	const next = document.getElementById('next');
	if(isChecked&&validName()&&yv!="출생 연도"&&mv!="월"&&dv!="일"){
		next.disabled = false;
	}else{
		next.disabled = true;
	}
	
	return isChecked
	if(isChecked==true){
		return true;
	}

}

function etc2(){
	let isChecked = false;
	for(let i = 0 ; i<gender.length; i++){
		if(gender[i].checked){
			document.getElementById("lbGender").innerHTML="재대로 입력함.";
			document.getElementById("lbGender").style.color="green";
			isChecked = true;
			break;
			
		}else{
			document.getElementById("lbGender").innerHTML="남성/여성 중 하나를 선택하세요.";
			document.getElementById("lbGender").style.color="red";
			isChecked = false;
			
			/*return false;*/
		}
	}//for 문 끝
	let yv=birthYearEl.value;
	let mv=birthMonthEl.value;
	let dv=birthDayEl.value;
	if(yv!="출생 연도"&&mv!="월"&&dv!="일"){
		document.getElementById("lbBir").innerHTML="재대로 입력함.";
		document.getElementById("lbBir").style.color="green";
	}else{
		document.getElementById("lbBir").innerHTML="생년월일을 선택하세요.";
		document.getElementById("lbBir").style.color="red";
	}
	
	//다음 보이게하기
	const next = document.getElementById('next');
	if(isChecked&&validName()&&yv!="출생 연도"&&mv!="월"&&dv!="일"){
		next.disabled = false;
	}else{
		next.disabled = true;
	}
	
	return isChecked
	if(isChecked==true){
		return true;
	}

}





