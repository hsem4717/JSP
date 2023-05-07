<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>    
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<
<jsp:include page="header.jsp"></jsp:include>
</head> 
<body>
<section>
<h2 style="text-align: center;">후보조회</h2>
<form style="display:flex; align-items: center; justify-content:center; text-align: center">
<table border="1" style="width: 50%;">
<tr>
<td>후보번호</td>
<td>성명</td>
<td>소속정당</td>
<td>학력</td>
<td>주민번호</td>
<td>지역구</td>
<td>대표전화번호</td>
</tr>
<%
request.setCharacterEncoding("UTF-8");
try{
	String sql = "SELECT * from TBL_MEMBER_202005 NATURAL JOIN TBL_PARTY_202005";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery(sql);
	
	while(rs.next()){
		String grade = "고졸";
		if(rs.getString(4).equals("2")){
			grade = "학사";
		}
		if(rs.getString(4).equals("3")){
			grade = "석사";
		}
		if(rs.getString(4).equals("4")){
			grade = "박사";
		}
		%>
		<tr>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getString(7) %></td>
		<td><%=grade %></td>
		<td><%=rs.getString(5).substring(0, 6) + "-" + rs.getString(5).substring(6, 13)%></td>
		<td><%=rs.getString(6) %></td>
		<td><%=rs.getString(10)+ "-" + rs.getString(11)+ "-" + rs.getString(12)%></td>
	
		</tr>
		<%
	}
	
}catch(Exception e){ 
	e.printStackTrace();
}

%>

</table>
</form>
</section>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>