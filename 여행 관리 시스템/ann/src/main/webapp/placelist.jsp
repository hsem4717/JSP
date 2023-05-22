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
<td>지역번호</td>
<td>지역</td>
<td>표값</td>
</tr>
<%
request.setCharacterEncoding("UTF-8");
try{
	String sql = "SELECT * FROM LOCATION";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery(sql);
	
	while(rs.next()){
	%>	
		<tr>
				<td><%= rs.getString(1) %></td>
				<td><%= rs.getString(2) %></td>
				<td><%= rs.getString(3) +"원"%></td>

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