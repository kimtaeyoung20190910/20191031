<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	String cid;
%>
	<% cid = (String) session.getAttribute("id");
		session.removeAttribute("id");
		session.removeAttribute("pw");
		session.removeAttribute("grant");		
	%>
	<c:if test="${grant == null }">
		<%=cid %>님 정상적으로 로그아웃 되었습니다.
		<a href="login.jsp"></a> &nbsp;&nbsp;
		<a href="main.jsp">홈으로</a>
	</c:if>
	
</body>
</html>