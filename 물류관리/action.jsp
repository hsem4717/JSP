<%@page import="java.sql.*"%>
<%@include file="db.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>action</title>
</head>
<body>

<%
request.setCharacterEncoding("UTF-8");
String incode = request.getParameter("incode");
String code = request.getParameter("code");
String inout = request.getParameter("inout");
String amount = request.getParameter("amount");
String date = request.getParameter("date");
String company = request.getParameter("company");
try
{
	String sql=" ";
	PreparedStatement pstmt = conn.prepareStatement(sql);
			sql = String.format("insert into TBL_INOUT_202002 values('%s', '%s', '%s', '%s', '%s', '%s')", incode, code, inout, amount, date, company
					);
		    pstmt.executeUpdate(sql);
%>
	<jsp:forward page="list.jsp"></jsp:forward>
<% 
		
}
catch(Exception e)
{
	e.printStackTrace();
}
%>

</body>
</html>