<%@page import="java.sql.SQLException"%>
<%@page import="co.micol.dto.MemberDto"%>
<%@page import="co.micol.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%! int n; %>
<%
	request.setCharacterEncoding("utf-8"); //한글깨짐 방지.
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pw = request.getParameter("pw");//join의 name속성 값
	String addr = request.getParameter("addr"); 

	MemberDto dto = new MemberDto(id, name, pw, addr);
	MemberDao dao = new MemberDao();
	n = dao.insert(dto);
%>
</head>
<body>
	<%
		if (n != 0) {
			out.print("회원가입이 성공했습니다.");
		} else {
			out.print("회원가입이 실패했습니다.");
		}
	%>
</body>

</html>