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
<script type="text/javascript" src="check.js"></script>
</head>
<body>
<table border=1">
<tr>
<td>참가번호 </td>
<td>참가자명 </td>
<td>생년월일 </td>
<td>성별 </td>
<td>특기 </td>
<td>소속 </td>
</tr>
<%
request.setCharacterEncoding("UTF-8");
try{
	String sql = " SELECT * from TBL_ARTIST_201905 ";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery(sql);
	while(rs.next()){
		String talent = rs.getString(5);
		String date = rs.getString(3);
		String birth = date.substring(0, 4) + "년 " + date.substring(4, 6) + "월" + date.substring(6, 8) + "일";
		
		String genn = "남";
		if(rs.getString(4).equals("F")){
			genn = "여";
		}
		
		String tek = "보컬";
		if(talent.equals("2")){
			tek = "댄스";
		}
		else if(talent.equals("3")){
			tek = "랩";
		}
	
	%>
	  <tr>
			<td> <a href="modify.jsp?artist_id=<%out.print(rs.getString(1)); %>" >
			<%=rs.getString(1) %>
			</a> 
			</td>
			<td> <%=rs.getString(2) %> </td>
			<td> <%=birth %> </td>
			<td> <%=genn %> </td>
			<td> <%=tek %> </td>
			<td> <%=rs.getString(6) %> </td>
	 </tr>
<%
	}
}catch(Exception e){
	e.printStackTrace();
}

%>
</table>
</body>
<jsp:include page="footer.jsp"></jsp:include>

</html>