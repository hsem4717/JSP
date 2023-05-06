function joinCheck(){
	if(frm.id.value.length==0){
		alert("참가 번호 비었음 ")
		frm.id.focus
		return false
	}if(frm.name.value.length==0){
		alert("참가 번호 비었음 ")
		frm.name.focus
		return false
	}
	if(frm.birth1.value.length==0){
		alert("생년월일 입력 안댐 ")
		frm.birth1.focus
		return false
	}
	if(frm.birth2.value.length==0){
		alert("생년월일 입력 안댐 ")
		frm.birth2.focus
		return false
	}
	if(frm.birth3.value.length==0){
		alert("생년월일 입력 안댐 ")
		frm.birth3.focus
		return false
	}
	if(frm.gender[0].checked==false&&frm.gender[1].checked==false){
		alert("성별 입력 안댄 ")
		frm.gender.focus
		return false
	}
	if(frm.talent.value==""){
		alert("특기 비었음 ")
		frm.talent.focus
		return false
	}
	if(frm.company.value.length==0){
		alert("소속사 비었음 ")
		frm.company.focus
		return false
	}
	alert("입력 완료")
	document.frm.submit()
	return true
}

function Reset(){
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	document.frm.reset();
}

function ret(){
	document.frm.submit()
	return true
}