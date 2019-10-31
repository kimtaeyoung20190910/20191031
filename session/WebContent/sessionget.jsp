<%@page import="java.util.Enumeration"%>
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
		Object obj1 = session.getAttribute("mySessionName"); //세션에 존재하는 값 가져오기.1
		String mySessionName = (String) obj1;
		
		Object obj2 = session.getAttribute("myNum");
		int myNum = (int) obj2;
//		int myNum = (int) session.getAttribute("myNum"); 2
		
		out.println(session.getId() + "<br />"); //세션 ID 출력.
		out.println(mySessionName + "<br />");
		out.println(myNum + "<br />");

	%>

</body>
</html>