<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<h2>공 지 사 항</h2>
</div>
<div>	
	<table border="1">
	<tr>
		<th align="center" width="70">순번</th>
		<th align="center" width="300">제목</th>
		<th align="center" width="100">작성자</th>
		<th align="center" width="130">작성일자</th>
		<th align="center" width="70">조회수</th>
	</tr>
<!-- 내용이 반복되는 부분 시작 -->
	<tr onclick="location.href='view.jsp'"
	 onmouseover="this.style.backgroundColor='PapayaWhip'"onmouseout="this.style.backgroundColor='white'">
		<td align="center">1</td>
		<td align="center">&nbsp;&nbsp;&nbsp;안내 사항</td>
		<td align="center">김태영</td>
		<td align="center">2019-10-31</td>
		<td align="center">100</td>
	</tr>
	<tr onclick="location.href='view.jsp'"
	 onmouseover="this.style.backgroundColor='PapayaWhip'"onmouseout="this.style.backgroundColor='white'">
		<td align="center" width="70">2</td>
		<td align="center" width="70">&nbsp;&nbsp;&nbsp;오늘은 휴가입니다.</td>
		<td align="center" width="70">김태영</td>
		<td align="center" width="70">2019-10-31</td>
		<td align="center" width="70">30</td>
	</tr>
	<tr onclick="location.href='view.jsp'"
	 onmouseover="this.style.backgroundColor='PapayaWhip'"onmouseout="this.style.backgroundColor='white'">
		<td align="center" width="70">3</td>
		<td align="center" width="70">&nbsp;&nbsp;&nbsp;회사 휴무일 공지</td>
		<td align="center" width="70">김태영</td>
		<td align="center" width="70">2019-10-31</td>
		<td align="center" width="70">45</td>
	</tr>
<!-- 레코드 끝 -->
	</table>	
</div>
<div>
	<br/>
	<c:if test="${grant == 'S'}">
	<c:if test="${empty id}"> <!-- not empty -->
	<button type="button" onclick="location.href='n_write.jsp'">글쓰기</button>
	</c:if>
</div>

<div id="footer"><%@ include file="footer.jsp" %></div>
</div>
</body>
</html>