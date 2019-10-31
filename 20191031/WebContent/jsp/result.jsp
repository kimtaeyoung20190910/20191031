<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<% request.setCharacterEncoding("utf-8"); %><!-- 한글처리 -->
</head>
<body>
	<div align="center">
	<div id="topMenu"><%@ include file="topMenu.jsp" %></div>
		<div>
			<h3>개인정보</h3>
		</div>
		<div>
			<table border="1">
				<tr>
				<th align="center" width="100">이름</th>
				<td width="250"><%=request.getParameter("name")%></td>
				</tr>
				
				<tr>
				<th align="center" width="100">나이</th>
				<td width="250"><%=request.getParameter("age")%></td>
				</tr>
				
				<tr>
				<th align="center" width="100">취미</th>
				<% String hobby[]=request.getParameterValues("hobby"); %>
				<td width="250"><%=Arrays.toString(hobby) %>
				
				<tr>
				<th align="center" width="100">지역</th>
				<td width="250"><%=request.getParameter("area")%></td>
				</tr>
			</table>
		</div>
		<div id="footer"><%@ include file="footer.jsp" %></div>	</div>
</body>
</html>