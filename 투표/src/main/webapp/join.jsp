<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="header.jsp"></jsp:include>
<script type="text/javascript" src="check.js"></script>
</head>
<body>
<section>
<h2 style="text-align: center;">투표하기</h2>
<form method="post" action="action.jsp" name = "frm"  style="display:flex; align-items: center; justify-content:center; ">
<table border="1" style="width: 50%;">
<tr>
<td>주민번호</td>
<td><input type="text" name="id" style="width: 30%"> 예 : 8906153154726</td>
</tr>
<tr>
<td>성명</td>
<td><input type="text" name="name" style="width: 23%"> </td>
</tr>
<tr>
<td>투표번호</td>
<td>
<select name = "num">
<option value=""></option>
<option value="1">김후보</option>
<option value="2">이후보</option>
<option value="3">박후보</option>
<option value="4">조후보</option>
<option value="5">최후보</option>
</select>
</td>
</tr>
<tr>
<td>투표시간</td>
<td><input type="text" name="time"></td>
</tr>
<tr>
<td>투표장소</td>
<td><input type="text" name="place"></td>
</tr>
<tr>
<td>유권자 확인</td>
<td>
<input type="radio" value="Y" name = "ch">확인
<input type="radio" value="N" name = "ch">미확인
</td>
</tr>
<tr>
<td colspan="2" style="text-align: center;">
<input type="button" value="투표하기" onclick="return joinCheck()">
<input type="button" value="다시쓰기" onclick="return Reset()">
</td>
</tr>
</table>
</form>
</section>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>