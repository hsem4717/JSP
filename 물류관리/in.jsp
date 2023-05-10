<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<script type="text/javascript" src="check.js"> </script>
<jsp:include page="header.jsp" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section>
<h2 style="text-align: center">입출고 등록</h2>
 <form method = "post" action="action.jsp" name="frm" style="display:flex; align-items: center; justify-content:center">
 <table border="1" style ="width:30%; height:30%; text-align:center">
<tr>
<td style="text-align: center; ">입출고번호</td>
<td> <input type="text"  name="incode" style="width:60%;"> 예)202201</td>
</tr>
<tr>
<td style="text-align: center; ">제품코드</td>
<td> <input type="text"  name="code" style="width:60%;"> </td>
</tr>
<tr>
<td style="text-align: center; ">입출고 구분</td>
<td>  <input type="radio"  name="inout" value="I">입고 <input type="radio"  name="out" value="O">출고</td>
</tr>
<tr>
<td style="text-align: center; ">수량</td>
<td> <input type="text"  name="amount" style="width:60%;"></td>
</tr>
<tr>
<td style="text-align: center; ">거래일자</td>
<td> <input type="date"  name="date" style="width:60%;"> </td>
</tr>
<tr>
<td style="text-align: center; ">거래처</td>
<td>
<select name="company" style="width: 30%">
 	<option value=""> 거래처선택 </option>
 	<option value="10"> 10 </option>
 	<option value="20"> 20 </option>
 	<option value="30"> 30 </option>
 	<option value="40"> 40 </option>
 	<option value="50"> 50 </option>
 	</select></td>
</tr>
<tr>
<td colspan="2">
<button onclick="return joinCheck()">입출고 등록</button>
<button onclick="return res()">다시쓰기</button>
</td>
</tr>


</table>
</form>
</section>
</body>
<jsp:include page="footer.jsp" />
</html>