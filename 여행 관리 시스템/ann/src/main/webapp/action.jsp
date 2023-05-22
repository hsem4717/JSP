<%@page import="java.sql.PreparedStatement"%>
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
<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String location = request.getParameter("location");
String godate = request.getParameter("godate");
String comedate = request.getParameter("comedate");

try{
	String sql = String.format("insert into RESERVATION values('%s','%s','%s','%s','%s','%s')", id, name, gender, location, godate, comedate);
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery(sql);

}catch(Exception e){
	e.printStackTrace();
}
%>
<jsp:forward page="reservationlist.jsp"></jsp:forward>
</body>
</html>