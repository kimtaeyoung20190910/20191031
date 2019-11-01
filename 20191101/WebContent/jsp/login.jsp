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
		<div><jsp:include page="topMenu.jsp"></jsp:include></div>
		<div>
			<h2>로 그 인</h2>
		</div>
		<div>
			<form id="frm" name="frm" action="loginCheck.jsp" method="post">
			<table border="1">
			<tr>
			<th width="100" align="center">아이디</th>
			<td><input type="text" id="id" name="name"></td>
			</tr>
			<tr>
			<th width="100" align="center">패스워드</th>
			<td><input type="password" id="pw" name="pw"></td>
			</tr>
			</table>
			<br/>
			<input type="submit" value="로그인">&nbsp;&nbsp;
			<input type="reset" value="취소">&nbsp;&nbsp;
			<input type="button" value="회원가입">&nbsp;&nbsp;
			</form>
		</div>
		<div><jsp:include page="footer.jsp"></jsp:include></div>
	</div>
</body>
</html>