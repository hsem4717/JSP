function joinCheck()
{
	if(frm.incode.value.length==0)
	{
		alert("수강월이 입력되지 않았습니다.");
		frm.incode.focus();
		return false;
	}
	if(frm.code.value.length==0)
	{
		alert("회원명이 입력되지 않았습니다.");
		frm.code.focus();
		return false;
	}
	if(frm.inout.value.length==0)
	{
		alert("회원번호가 입력되지 않았습니다.");
		frm.inout.focus();
		return false;
	}
	if(frm.amount.value.length==0)
	{
		alert("강의장소가 입력되지 않았습니다.");
		frm.amount.focus();
		return false;
	}
	if(frm.date.value.length==0)
	{
		alert("강의명이 입력되지 않았습니다.");
		frm.date.focus();
		return false;
	}
	if(frm.company.value.length==0)
	{
		alert("수강료가 입력되지 않았습니다.");
		frm.company.focus();
		return false;
	}
	
	alert("수강신청이 정상적으로 완료되었습니다!");
	document.frm.submit();
	return true;
}
function res()
{
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	document.frm.reset();
	frm.month.focus();
}
