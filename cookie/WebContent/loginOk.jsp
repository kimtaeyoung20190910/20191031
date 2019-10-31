<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		String id, pw;
	%>
	<%
		id=request.getParameter("id");
		pw=request.getParameter("pw");
		
		if(id.equals("abc") && pw.equals("12345")) {
			Cookie cookie = new Cookie("id", id); // 쿠키 생성
			cookie.setMaxAge(60); // 60초간 유효
			response.addCookie(cookie); //쿠키를 담아 내려보냄
			
			Cookie cookie1 = new Cookie("pw", pw);
			response.addCookie(cookie1);
			
			response.sendRedirect("welcome.jsp"); //일치할 시 실행.
		} else {
			response.sendRedirect("index.jsp");
		}
	%>
</body>
</html>