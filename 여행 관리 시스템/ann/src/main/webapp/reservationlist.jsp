<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href = "style.css" rel = "stylesheet">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2>2023.05.15 여행지</h2>
<table border="1" style="margin:auto;width: 40%;text-align: center;">
<tr>
<td>예약번호</td>
<td>예약자명</td>
<td>성별</td>
<td>지역</td>
<td>가는 날짜</td>
<td>오늘 날짜</td>
<td>예약 삭제</td>
</tr>
<%
request.setCharacterEncoding("UTF-8");
try{
	String sql = "SELECT * FROM RESERVATION";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery(sql);

	
	while(rs.next()){
		String location = "대한민국";
		String gender = "남";
		if(rs.getString(3).equals("F")){
			gender = "여";
		}
		if(rs.getString(4).equals("L02")){
			location = "일본";
		}
		else if(rs.getString(4).equals("L03")){
			location = "싱가포르";
		}
		else if(rs.getString(4).equals("L04")){
			location = "호주";
		}
	%>	
	
		<tr>
				<td><a href="modify.jsp?id=<%=rs.getString(1)%>"><%= rs.getString(1) %></a></td>
				<td><%= rs.getString(2) %></td>
				<td><%= gender %></td>
				<td><%= location %></td>
				<td><%= rs.getString(5).substring(0, 4) + "년" + rs.getString(5).substring(4, 6) + "월" + rs.getString(5).substring(6, 8) +"일"%></td>
				<td><%= rs.getString(6).substring(0, 4) + "년" + rs.getString(6).substring(4, 6) + "월" + rs.getString(6).substring(6, 8) +"일"%></td>
				<td><a href="delete.jsp?id=<%=rs.getString(1)%>">삭제</td>
				

			</tr>
		
		<%
	}
	
}catch(Exception e){
	e.printStackTrace();
}



%>


</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>