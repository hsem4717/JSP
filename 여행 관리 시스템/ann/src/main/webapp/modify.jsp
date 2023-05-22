<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2>여행 정보 수정</h2>
<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
try{
	String sql = String.format("select * from RESERVATION where RID = '%s'", id);
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery(sql);
	while(rs.next()){
		%>
		<form name = "frm2" action="action2.jsp">
		<table border="1" style="margin: 0 auto;">
		<tr>
		<td>예약번호</td>
		<td><input type="text" name="id" value = <%=rs.getString(1)%> readonly="readonly"></td>
		</tr>
		<tr>
		<td>예약자명</td>
		<td><input type="text" name="name" value = <%=rs.getString(2)%>></td>
		</tr>
		<tr>
		<td>성별</td>
		<td>
		<input type="radio" name="gender" value="M" <%if(rs.getString(3).equals("M")) out.print("checked"); %>>남성
		<input type="radio" name="gender" value="F"<%if(rs.getString(3).equals("F")) out.print("checked"); %>>여성
		</td>
		</tr>
		<tr>
		<td>지역번호</td>
		<td>
		<select name = "location">
		<option value="">선택해주세요
		<option value="L01" <%if(rs.getString(4).equals("L01")) out.print("selected"); %>>대한민국
		<option value="L02" <%if(rs.getString(4).equals("L02")) out.print("selected"); %>>일본
		<option value="L03" <%if(rs.getString(4).equals("L03")) out.print("selected"); %>>싱가포르
		<option value="L04" <%if(rs.getString(4).equals("L04")) out.print("selected"); %>>호주
		</select>
		</td>
		</tr>
		<tr>
		<td>출발일</td>
		<td><input type="text" name = "godate" value = <%=rs.getString(5)%>></td>
		</tr>
		<tr>
		<td>도착일</td>
		<td><input type="text" name = "comedate" value = <%=rs.getString(6)%>></td>
		</tr>
		<tr>
		<td colspan="2" style="text-align: center;">
		<button onclick="return joinCheck()">등록하기</button>
		<button onclick="return Reset()">다시쓰기</button>
		</td>
		</tr>
		</table>
		</form>
		<%
	}
}catch(Exception e){
	e.printStackTrace();
}
%>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>