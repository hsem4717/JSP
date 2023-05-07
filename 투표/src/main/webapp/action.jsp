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
String num = request.getParameter("num");
String time = request.getParameter("time");
String place = request.getParameter("place");
String ch = request.getParameter("ch");

try{
	String sql = String.format("insert into TBL_VOTE_202005 values('%s','%s','%s','%s','%s','%s')", id, name, num, time, place, ch);
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery(sql);
}catch(Exception e){ 
	e.printStackTrace();
}
%>
<jsp:include page="test.jsp"></jsp:include>
</body>
</html>