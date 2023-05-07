<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="db.jsp" %>    
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="header.jsp"></jsp:include>
<title>Insert title here</title>
</head>
<body>
<section>
<table border="1" style=" position: fixed; top:100px; left: 250px; text-align: center;">
<tr>
<td>성명</td>
<td>생년월일</td>
<td>나이</td>
<td>성별</td>
<td>후보번호</td>
<td>투표시간</td>
<td>유권자확인</td>
</tr>
<%
request.setCharacterEncoding("UTF-8");
try{
	String sql = "SELECT * from TBL_VOTE_202005 where V_AREA = '제1투표장'";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery(sql);
	
	
	while(rs.next()){
		String gender = "남";
		if(rs.getString(1).substring(6, 7).equals("2")){
			gender = "여";
		}
		
		String check = "확인";
		if(rs.getString(6).equals("N")){
			check = "미확인";
		}
		
		
		int ag = 21;
		if(rs.getString(1).substring(0, 1).equals("8")){
			ag = 31;
		}
		if(rs.getString(1).substring(0, 1).equals("7")){
			ag = 41;
		}
		if(rs.getString(1).substring(0, 1).equals("6")){
			ag = 51;
		}
		
		if(rs.getString(1).substring(0, 1).equals("5")){
			ag = 61;
		}
		if(rs.getString(1).substring(0, 1).equals("4")){
			ag = 71;
		}
		
		%>
		<tr>
		<td><%=rs.getString(2) %></td>
		<td><%= "19" + rs.getString(1).substring(0, 2) + "년" + rs.getString(1).substring(2, 4) + "월"+rs.getString(1).substring(4, 6)+ "일" %></td>
		<td><%="만 "%><%=ag%><%="세"%></td>
		<td><%=gender %></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getString(4).substring(0, 2) + ":"  + rs.getString(4).substring(2, 4)%></td>
		<td><%=check%></td>
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