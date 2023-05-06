<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="header.jsp"></jsp:include>
<script type="text/javascript" src = "check.js"></script>
</head>
<body>
<form name = "frm" action="action.jsp" style="position: fixed; top: 100px; left: 150px">
<table border=1">
<tr>
<td>참가번호 </td>
<td><input type="text" name = "id">참가번호는(A000)4자리 입니다</td>
</tr>
<tr>
<td>참가자명 </td>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>생년월일 </td>
<td><input type="text" name="birth1">년<input type="text" name="birth2">월<input type="text" name="birth3">일</td>
</tr>
<tr>
<td>성별 </td>
<td><input type="radio" name="gender" value="M">남성<input type="radio" name="gender" value="F">여성</td>
</tr>
<tr>
<td>특기 </td>
<td>
<select  name = "talent">
<option  value="">특기선택</option>
<option value="1">보컬 </option>
<option value="2">댄스 </option>
<option value="3">랩 </option>
</select>
</td>
</tr>
<tr>
<td>소속사 </td>
<td><input type="text" name= "company"></td>
</tr>
<tr>
<td colspan="2">
<input type="button" value="오디션등록 " onclick="return joinCheck()">
<input type="button" value="다시쓰기 " onclick="return Reset()"> 
</td>
</tr>
</table>
</form>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>