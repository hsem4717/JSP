function joinCheck(){
	if(frm.id.value.length == 0){
		alert("예약번호 입력하세요")
		frm.id.focus()
		return false
	}
	if(frm.name.value.length == 0){
		alert("이름 입력하세요")
		frm.name.focus()
		return false
	}
	if(frm.gender[0].checked == false && frm.gender[1].checked == false){
		alert("성별 선택 하세요")
		frm.gender.focus()
		return false
	}
	if(frm.location.value == ""){
		alert("어디갈건데")
		frm.location.focus()
		return false
	}
	if(frm.godate.value.length == 0){
		alert("언제 갈건데")
		frm.godate.focus()
		return false
	}
	if(frm.comedate.value.length == 0){
		alert("언제올건데")
		frm.comedate.focus()
		return false
	}
	alert("등록 완료")
	return true
}

function Reset(){
	alert("다시 씁니다");
	document.frm.reset();
}