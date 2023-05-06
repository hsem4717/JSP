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
String id = request.getParameter("id");
String name = request.getParameter("name");
String birth1 = request.getParameter("birth1");
String birth2 = request.getParameter("birth2");
String birth3 = request.getParameter("birth3");
String gender = request.getParameter("gender");
String talent = request.getParameter("talent");
String company = request.getParameter("company");

try{
	String sql = String.format("INSERT INTO tbl_artist_201905 values('%s','%s','%s','%s','%s','%s')", id, name, birth1+birth2+birth3, gender, talent, company);
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery(sql);
	
}catch(Exception e)
{
	e.printStackTrace();
}


%>
<jsp:include page="list.jsp"></jsp:include>


</body>
</html>