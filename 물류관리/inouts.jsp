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
<h2 style="text-align: center">입출고</h2>

 <form style="display:flex; align-items: center; justify-content:center; text-align: center">
<table border="1" style="width:50%">

<tr>
<td>입출고번호</td>
<td>제품코드</td>
<td>제품명</td>
<td>입출고구분</td>
<td>수량</td>
<td>거래처</td>
<td>거래일자</td>
</tr>
<%
	request.setCharacterEncoding("UTF-8");
try{
	String sql = "SELECT T_NO, P_CODE, P_NAME, T_TYPE, T_CNT, T_CODE, T_DATE FROM TBL_INOUT_202002 NATURAL JOIN TBL_PRODUCT_202002";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery(sql);
	while(rs.next())
	 {
%>
	  <tr>
			<td> <%=rs.getString(1) %></td>
			<td> <%=rs.getString(2) %> </td>
			<td> <%=rs.getString(3) %> </td>
			<td> <%=rs.getString(4) %> </td>
			<td style = "text-align: right"><%=rs.getString(5) %> </td>
			<td style = "text-align: right"><%=rs.getString(6) %> </td>
			<td> <%=rs.getString(7) %> </td>
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