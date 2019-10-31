<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies(); //클라이언트로 부터 쿠키값 얻기

		for (int i = 0; i < cookies.length; i++) {
			String id = cookies[i].getValue();
			out.println(id);
			if (id.equals("abcde")) 
				out.println("<br/>"+ id + "님 안녕하세요." + "<br/>");
		}
	%>
	
	<a href="logout.jsp">로그아웃</a>
</body>
</html>