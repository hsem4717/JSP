<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@include file="db.jsp" %>    
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
<section>
<h3>후보자등수</h3>
<table border="1" style=" top:100px; left: 250px; text-align: center;">
<tr>
<td>후보번호</td>
<td>성명</td>
<td>총투표건수</td>
</tr>
<%
request.setCharacterEncoding("UTF-8");
try{
	String sql = "SELECT M_NO, M_NAME, COUNT(M_NO) from TBL_VOTE_202005 NATURAL JOIN TBL_MEMBER_202005 group by M_NO, M_NAME order by COUNT(M_NO) DESC";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery(sql);
	
	while(rs.next()){
		%>
		<tr>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		</tr>
		<%
	}
}catch(Exception e){ 
	e.printStackTrace();
}

%>

</table>
</section>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>