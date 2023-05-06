<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>
<form name = "frm" action="action.jsp" style="position: fixed; top: 100px; left: 150px">
<table border=1">
<tr>
<td>참가번호 </td>
<td>참가자명 </td>
<td>총점 </td>
<td>평균 </td>
<td>등수  </td>
</tr>
<%
request.setCharacterEncoding("UTF-8");
try{
	String sql = " select ARTIST_ID, ARTIST_NAME, SUM(SCORE), round(AVG(SCORE), 2), rank() over (order by avg(score) desc) from tbl_point_201905 NATURAL JOIN tbl_artist_201905 NATURAL JOIN tbl_mento_201905 GROUP BY ARTIST_ID, ARTIST_NAME ORDER BY AVG(SCORE) DESC";   
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery(sql);
	while(rs.next()){
		int score = 1;
		
	%>
	  <tr>
			<td> <%=rs.getString(1) %></td>
			<td> <%=rs.getString(2) %> </td>
			<td> <%=rs.getString(3) %> </td>
			<td> <%=rs.getString(4) %> </td>
			<td> <%=rs.getString(5) %> </td>
	 </tr>
<%
	}
}catch(Exception e){
	e.printStackTrace();
}

%>
</table>
</form>
</body>
<jsp:include page="footer.jsp"></jsp:include>

</html>