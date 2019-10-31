<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

	<%
		session.setAttribute("mySessionName", "태영"); // 세션에 값넣기.(변수명, 값)
		session.setAttribute("myNum", 12345);
	%>

	<a href="sessionget.jsp">세션값 확인하기</a>

</body>
</html>