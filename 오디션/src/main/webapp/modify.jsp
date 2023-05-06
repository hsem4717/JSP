<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file = "db.jsp" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("artist_id");
System.out.println(id);
try{
	String sql = String.format("select * from tbl_artist_201905 where artist_id = '%s'",id);
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery(sql);
	while(rs.next()){
		%>
		<table border = 1>
		  <tr>
				<td> <%=rs.getString(1) %></td>
				<td> <%=rs.getString(2) %> </td>
				<td> <%=rs.getString(3) %> </td>
				<td> <%=rs.getString(4) %> </td>
				<td> <%=rs.getString(5) %> </td>
				<td> <%=rs.getString(6) %> </td>
		 </tr>
		 </table>
	<%
	}
	
	
}catch(Exception e){
	e.printStackTrace();
}

%>
<jsp:include page="list.jsp"></jsp:include>


</body>
</html>