<%@page import="co.micol.dto.MemberDto"%>
<%@page import="co.micol.dao.MemberDao"%>
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
	String id = (String) session.getAttribute("id");
	
	MemberDto dto = new MemberDto(); //사용할 인스턴스 생성
	MemberDao dao = new MemberDao();
	dto = dao.select(id);
%>
<div align="center">
	<div><h2>회원개인정보</h2></div>
	<div>
		<form id="frm" name="frm" action="modifyOk.jsp" method="post">
	    <div>
	    <table border="1">
	    	<tr>
	    		<th align="center" width="100">아 이 디</th>
	    		<td width="150"><%=dto.getId()%></td>
	    	</tr>
	    	<tr>
	    		<th align="center" width="100">가입일자</th>
	    		<td width="150"><%=dto.getEnterDate()%></td>
	    	</tr>
	    	<tr>
	    		<th align="center" width="100">이 름</th>
	    		<td><input type="text" id="name" name="name" value=<%=dto.getName() %> size="30"></td> <!-- 수정가능 -->
	    	</tr>
	    	<tr>
	    		<th align="center" width="100">주 소</th>
	    		<td><input type="text" id="addr" name="addr" value=<%=dto.getAddr() %> size="30"></td> <!-- 수정가능 -->
	    	</tr>
		</table>
		</div>
		<div>
			<br/>
			<input type="submit" value="수 정"> &nbsp;&nbsp;
			<button type="button" onclick="location.href='main.jsp'">돌아가기</button>
		</div>
		</form>
	</div>
</div>
</body>
</html>