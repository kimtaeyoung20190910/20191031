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
	request.setCharacterEncoding("utf-8");
	String id = (String) session.getAttribute("id"); //세션값 가져오기
	String name = request.getParameter("name"); //form 객체의 값 가져오기
	String addr = request.getParameter("addr");

	MemberDto dto = new MemberDto(id, name, addr);
	MemberDao dao = new MemberDao();
	
	n = dao.update(dto);
%>
</head>
<body>
	<%
		if (n != 0) {
			dto = dao.select(id);
			out.print("업데이트에 성공했습니다.");
		} else {
			out.print("업데이트에 실패했습니다.");
		}
	%>
		<div>
			<br />
			<button type="button" onclick="location.href='main.jsp'">홈으로</button>
		</div>
</body>
</html>