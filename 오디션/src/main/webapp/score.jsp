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
<td>채점번호 </td>
<td>참가번호 </td>
<td>첨가자명 </td>
<td>생년월일 </td>
<td>점수  </td>
<td>평점 </td>
<td>멘토명 </td>
</tr>
<%
request.setCharacterEncoding("UTF-8");
try{
	String sql = " select * from tbl_point_201905 NATURAL JOIN tbl_artist_201905 NATURAL JOIN tbl_mento_201905 order by SERIAL_NO";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery(sql);
	while(rs.next()){
		int score = rs.getInt(4);
		String date = rs.getString(6);
		String birth = date.substring(0, 4) + "년 " + date.substring(4, 6) + "월" + date.substring(6, 8) + "일";
		
		String genn = "남";
		if(rs.getString(4).equals("F")){
			genn = "여";
		}
		
		String grade = score>=90?"A":score>=80?"B":score>=70?"C":score>=60?"D":"F";
		
	%>
	  <tr>
			<td> <%=rs.getString(3) %></td>
			<td> <%=rs.getString(2) %> </td>
			<td> <%=rs.getString(5) %> </td>
			<td> <%=birth %> </td>
			<td> <%=score %> </td>
			<td> <%=grade %> </td>
			<td> <%=rs.getString(10) %> </td>
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