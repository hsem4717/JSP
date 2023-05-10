<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="db.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="header.jsp" />
<link rel="stylesheet" href="style.css">
</head>
<body>
<section>
<h2 style="text-align: center">제품조회</h2>

 <form style="display:flex; align-items: center; justify-content:center; text-align: center">
<table border="1" style="width:50%">

<tr>
<td>제품코드</td>
<td>제품명</td>
<td>사이즈</td>
<td>매입단가</td>
<td>출고단가</td>
</tr>
<%
	request.setCharacterEncoding("UTF-8");
try{
	String sql = "SELECT * FROM TBL_PRODUCT_202002 ";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery(sql);
	while(rs.next())
	 {
%>
	  <tr>
			<td> <%=rs.getString(1) %></td>
			<td> <%=rs.getString(2) %> </td>
			<td> <%=rs.getString(3) %> </td>
			<td style = "text-align: right"> \<%=rs.getString(4) %> </td>
			<td style = "text-align: right"> \<%=rs.getString(5) %> </td>
	 </tr>
<%
	}
}
	 catch(Exception e)
 {
	 e.printStackTrace();
 }
 %>











</table>
</form>
</section>
</body>
<jsp:include page="footer.jsp" />
</html>