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
<div id="topMenu"><%@ include file="topMenu.jsp" %></div>
<div>
		<h3>개인정보 입력</h3>
</div>
	<div>
	<form id="frm" name="frm" action="result.jsp" method="post">
		<div id="in_table">
		<table border="1">
			<tr>
				<th align="center" width="100">이름</th>
				<td width="250"><input type="text" id="name" name="name" size="30"></td>
			</tr>

			<tr>
				<th align="center" width="100">나이</th>
				<td width="250"><input type="text" id="age" name="age" size="30"></td>
			</tr>

			<tr>
				<th align="center" width="100">취미</th>
				<td width="250">
					<input type="checkbox" id="hobby" name="hobby" value="독서">독서 &nbsp;&nbsp;
					<input type="checkbox" id="hobby" name="hobby" value="바둑">바둑 &nbsp;&nbsp;
					<input type="checkbox" id="hobby" name="hobby" value="낚시">낚시 &nbsp;&nbsp;</td>
			</tr>

			<tr>
				<th align="center" width="100">지역</th>
				<td width="250">
					<select id="area" name="area">
					<option value="대구" selected="selected">대구</option>
					<option value="서울">서울</option>
					<option value="부산">부산</option>
					<option value="울산">울산</option></select></td>
			</tr>
		</table>
			<br />
					<input type="submit" value="입력">&nbsp;&nbsp; 
					<input type="reset" value="취소">
				</div>
			</form>
		</div>
		<div id="footer"><%@ include file="footer.jsp" %></div>
	</div>
</body>
</html>