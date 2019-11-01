<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		${id}님 환영합니다.<br/>
		<c:if test="${grant == 'U'}">
		일반유저 입니다.</c:if>
		<c:if test="${grant == 'S'}">
		관리자 입니다.</c:if>
	
	</div>
</body>
</html>