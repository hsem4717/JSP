function joinCheck(){
	if(frm.id.value.length==0){
		alert("주민번호 입력 안댐 ")
		frm.id.focus()
		return false
	}
	if(frm.name.value.length == 0){
		alert("이름 입력 안댐 ")
		frm.name.focus()
		return false;
	}
	if(frm.num.value== ""){
		alert("투표번호 선택 안댐")
		frm.num.focus()
		return false;
	}
	if(frm.time.value.length == 0){
		alert("시간 입력 안댐 ")
		frm.time.focus()
		return false;
	}
	if(frm.place.value.length == 0){
		alert("장소 입력 안댐 ")
		frm.place.focus()
		return false;
	}if(frm.ch[0].checked ==false &&frm.ch[1].checked ==false){
		alert("유권자 확인 선택 안댐")
		return false;
	}
	document.frm.submit()
	alert("입력 완료")
	return true;
}