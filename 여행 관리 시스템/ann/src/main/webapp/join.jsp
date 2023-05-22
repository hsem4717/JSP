<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href = "style.css" rel = "stylesheet">
<script type="text/javascript" src = "check.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2>예약하기</h2>
<form name = "frm" action="action.jsp">
<table border="1" style="margin: 0 auto;">
<tr>
<td>예약번호</td>
<td><input type="text" name="id"></td>
</tr>
<tr>
<td>예약자명</td>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>성별</td>
<td>
<input type="radio" name="gender" value="M">남성
<input type="radio" name="gender" value="F">여성
</td>
</tr>
<tr>
<td>지역번호</td>
<td>
<select name = "location">
<option value="">선택해주세요
<option value="L01">대한민국
<option value="L02">일본
<option value="L03">싱가포르
<option value="L04">호주
</select>
</td>
</tr>
<tr>
<td>출발일</td>
<td><input type="text" name = "godate"></td>
</tr>
<tr>
<td>도착일</td>
<td><input type="text" name = "comedate"></td>
</tr>
<tr>
<td colspan="2" style="text-align: center;">
<button onclick="return joinCheck()">등록하기</button>
<button onclick="return Reset()">다시쓰기</button>
</td>
</tr>
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>