// 체크박스 가져오기
const checkboxes = document.querySelectorAll('.chk');
const ch1=document.getElementById("ch1");
const ch2=document.getElementById("ch2");
const ch3=document.getElementById("ch3");
const ch1ch = ch1.checked;
const ch2ch = ch2.checked;
const ch3ch = ch3.checked;

//모두동의 (취소는 더 개발해야함)
function allcheck(){
	const checkboxes = document.querySelectorAll('.chk');
	const ch1 = document.getElementById('ch1');
	const ch2 = document.getElementById('ch2');
	const ch3 = document.getElementById('ch3');
	const ch1ch = ch1.checked;
	const ch2ch = ch2.checked;
	const ch3ch = ch3.checked;
	if(ch1ch&&ch2ch&&ch3ch){
		next.disabled = true;
		for(const checkbox of checkboxes){
	        checkbox.checked = false;
	       
		}
	}else{
		next.disabled = false;
		for(const checkbox of checkboxes){
	        checkbox.checked = true;
	        
		}
	}
}
// 다음버튼
const next = document.getElementById('next');
/*// 체크 여부
function ch1check() {
	  
	  // 1. checkbox element를 찾습니다.
	  const checkbox1 = document.getElementById('ch1');
	  

	  // 2. checked 속성을 체크합니다.
	  const is_checked1 = checkbox1.checked;
	  console.log(is_checked1);
	  
		if(is_checked1){
			true;
		}else{
			false;	
		}	  

	}
function ch2check() {
	const ch1=document.getElementById("ch1");
	const ch2=document.getElementById("ch2");
	const ch3=document.getElementById("ch3");
	const ch1ch = ch1.checked;
	const ch2ch = ch2.checked;
	const ch3ch = ch3.checked;
	
	// 1. checkbox element를 찾습니다.
	
	const checkbox2 = document.getElementById('ch2');
	
	// 2. checked 속성을 체크합니다.
	const is_checked2 = checkbox2.checked;

	next.disabled = false;
	console.log(ch1ch);
	  if(ch1ch&&ch2ch){
		  next.disabled = false;
	  }else{
		  next.disabled = true;
	  } 
	
}*/


function check(){
	const checkboxes = document.querySelectorAll('.chk');
	const ch1=document.getElementById("ch1");
	const ch2=document.getElementById("ch2")
	const ch1ch = ch1.checked;
	const ch2ch = ch2.checked;
	if(ch1ch&&ch2ch){
		next.disabled = false;
	}else{
		next.disabled = true;
	}
}


