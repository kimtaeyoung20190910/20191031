<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="co.micol.dao.MemberDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String grant;
	
	MemberDao dao = new MemberDao();
	grant = dao.isLoginCheck(id, pw);
	
	if(grant.equals(null)) {
	} else {
		session.setAttribute("id", id);
		session.setAttribute("pw", pw);
		session.setAttribute("grant", grant);
		response.sendRedirect("main.jsp");
	}
	%>
	
</body>
</html>